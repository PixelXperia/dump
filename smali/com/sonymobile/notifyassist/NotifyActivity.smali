.class public Lcom/sonymobile/notifyassist/NotifyActivity;
.super Landroid/app/Activity;
.source "NotifyActivity.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "NotifyActivity"

    const/4 v1, 0x3

    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/sonymobile/notifyassist/NotifyActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setPreferenceIfNeed()V
    .locals 2

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/notifyassist/NotifyAssistUtils;->isTapNotifyNotification(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    sget-boolean v0, Lcom/sonymobile/notifyassist/NotifyActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NotifyActivity"

    const-string v1, "set is tap Notify Notification"

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sonymobile/notifyassist/NotifyAssistUtils;->setTapNotifyNotification(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private updateButtonVisibility()V
    .locals 1

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/notifyassist/NotifyAssistUtils;->isSetByDefaultGoogleAssistant(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/notifyassist/NotifyAssistUtils;->isSetAssistant(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    iget-object p0, p0, Lcom/sonymobile/notifyassist/NotifyActivity;->mButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onButtonClicked(Landroid/view/View;)V
    .locals 2

    .line 46
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.sonyericsson.settings"

    const-string v1, "com.sonymobile.settings.powerbtnoption.PowerBtnOptionSettings"

    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget p1, Lcom/android/systemui/R$layout;->notify_activity:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 35
    sget p1, Lcom/android/systemui/R$id;->notify_activity_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/sonymobile/notifyassist/NotifyActivity;->mButton:Landroid/widget/Button;

    .line 36
    invoke-direct {p0}, Lcom/sonymobile/notifyassist/NotifyActivity;->setPreferenceIfNeed()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 42
    invoke-direct {p0}, Lcom/sonymobile/notifyassist/NotifyActivity;->updateButtonVisibility()V

    return-void
.end method
