.class Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManagedProfileBroadcastReceiver"
.end annotation


# instance fields
.field private mListeningToManagedProfileEvents:Z

.field final synthetic this$0:Lcom/android/settings/accounts/AccountPreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/accounts/AccountPreferenceController;)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/accounts/AccountPreferenceController;Lcom/android/settings/accounts/AccountPreferenceController$1;)V
    .locals 0

    .line 579
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 584
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received broadcast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountPrefController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 586
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 587
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 595
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot handle received broadcast: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 589
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-static {p1}, Lcom/android/settings/accounts/AccountPreferenceController;->access$100(Lcom/android/settings/accounts/AccountPreferenceController;)V

    .line 591
    iget-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-static {p1}, Lcom/android/settings/accounts/AccountPreferenceController;->access$200(Lcom/android/settings/accounts/AccountPreferenceController;)V

    .line 592
    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-static {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->access$300(Lcom/android/settings/accounts/AccountPreferenceController;)V

    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 2

    .line 599
    iget-boolean v0, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->mListeningToManagedProfileEvents:Z

    if-nez v0, :cond_0

    .line 600
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 601
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 602
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 604
    iput-boolean p1, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->mListeningToManagedProfileEvents:Z

    :cond_0
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1

    .line 609
    iget-boolean v0, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->mListeningToManagedProfileEvents:Z

    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 611
    iput-boolean p1, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->mListeningToManagedProfileEvents:Z

    :cond_0
    return-void
.end method
