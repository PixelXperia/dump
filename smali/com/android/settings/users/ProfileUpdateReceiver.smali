.class public Lcom/android/settings/users/ProfileUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProfileUpdateReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/android/settings/users/ProfileUpdateReceiver;->copyProfileName(Landroid/content/Context;)V

    return-void
.end method

.method private static copyProfileName(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "profile"

    .line 52
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "name_copied_once"

    .line 53
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const-string v4, "user"

    .line 58
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 59
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->getMeProfileName(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 61
    invoke-virtual {v4, v3, p0}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 64
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 39
    invoke-static {p1}, Lcom/android/settings/Utils;->isMLCVersion(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 43
    :cond_0
    new-instance p2, Lcom/android/settings/users/ProfileUpdateReceiver$1;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/users/ProfileUpdateReceiver$1;-><init>(Lcom/android/settings/users/ProfileUpdateReceiver;Landroid/content/Context;)V

    .line 48
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method
