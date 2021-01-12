.class public Lcom/sonymobile/keyguard/aod/PhotoPlaybackIntroductionActivity;
.super Landroid/app/Activity;
.source "PhotoPlaybackIntroductionActivity.java"


# static fields
.field private static final INTENT_LOCKSCREEN_PHOTOPLAYBACK:Landroid/content/Intent;


# instance fields
.field private mButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sonymobile.settings.intent.action.LOCKSCREEN_AMBIENT_PHOTOPLAYBACK"

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.sonyericsson.lockscreen.uxpnxt"

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SHOW_PERMISSION"

    const/4 v2, 0x1

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x14000000

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackIntroductionActivity;->INTENT_LOCKSCREEN_PHOTOPLAYBACK:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/keyguard/aod/PhotoPlaybackIntroductionActivity;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackIntroductionActivity;->startPhotoPlaybackSettings()V

    return-void
.end method

.method private hideSystemUI()V
    .locals 1

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1211504

    .line 69
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private judgeChangeToSummaryForMLC()V
    .locals 1

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackProviderUtils;->isIdiInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    sget v0, Lcom/android/keyguard/R$id;->aod_introduction_summary_txt:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 89
    sget v0, Lcom/android/keyguard/R$string;->lockscreen_ambient_q_recall_demo_summary_noloc_txt:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method private startPhotoPlaybackSettings()V
    .locals 1

    .line 83
    sget-object v0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackIntroductionActivity;->INTENT_LOCKSCREEN_PHOTOPLAYBACK:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget p1, Lcom/android/keyguard/R$layout;->somc_aod_introduction_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const/4 p1, 0x1

    .line 43
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 44
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackIntroductionActivity;->judgeChangeToSummaryForMLC()V

    .line 45
    sget p1, Lcom/android/keyguard/R$id;->aod_introduction_continue_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackIntroductionActivity;->mButton:Landroid/widget/Button;

    .line 46
    iget-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackIntroductionActivity;->mButton:Landroid/widget/Button;

    new-instance v0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackIntroductionActivity$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackIntroductionActivity$1;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackIntroductionActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackIntroductionActivity;->hideSystemUI()V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    :goto_0
    return-void
.end method
