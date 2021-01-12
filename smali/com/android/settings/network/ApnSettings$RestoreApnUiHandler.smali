.class Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/ApnSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/network/ApnSettings;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/network/ApnSettings;Lcom/android/settings/network/ApnSettings$1;)V
    .locals 0

    .line 490
    invoke-direct {p0, p1}, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/network/ApnSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 493
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 495
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 497
    invoke-static {v0}, Lcom/android/settings/network/ApnSettings;->access$102(Z)Z

    return-void

    :cond_1
    const-string v1, "ro.tel.variant"

    const-string v2, ""

    .line 500
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "jp_dcm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 501
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v1}, Lcom/android/settings/network/ApnSettings;->access$1000(Lcom/android/settings/network/ApnSettings;)Ljava/lang/String;

    move-result-object v1

    .line 502
    iget-object v2, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v2}, Lcom/android/settings/network/ApnSettings;->access$1100(Lcom/android/settings/network/ApnSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 503
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 504
    iget-object v2, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v2, v1}, Lcom/android/settings/network/ApnSettings;->access$1200(Lcom/android/settings/network/ApnSettings;Ljava/lang/String;)V

    .line 507
    :cond_2
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v1}, Lcom/android/settings/network/ApnSettings;->access$200(Lcom/android/settings/network/ApnSettings;)V

    .line 508
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 509
    invoke-static {v0}, Lcom/android/settings/network/ApnSettings;->access$102(Z)Z

    .line 510
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    const/16 v1, 0x3e9

    invoke-static {v0, v1}, Lcom/android/settings/network/ApnSettings;->access$1300(Lcom/android/settings/network/ApnSettings;I)V

    .line 511
    iget-object p0, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    .line 513
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120e5e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 511
    invoke-static {p1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 515
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
