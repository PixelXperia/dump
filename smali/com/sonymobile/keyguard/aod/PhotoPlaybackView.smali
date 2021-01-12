.class public Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;
.super Landroid/widget/FrameLayout;
.source "PhotoPlaybackView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;
    }
.end annotation


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlpha:F

.field private mAsyncTaskCheckConditions:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mCenterX:I

.field private mCenterY:I

.field private mContext:Landroid/content/Context;

.field private mDefaultAlpha:F

.field private mDozeMode:I

.field private mDozing:Z

.field private mFingerPrintFeedBackView:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

.field private final mHandler:Landroid/os/Handler;

.field mImageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCheckConditions:Z

.field private mIsQueryTimeout:Z

.field private mIsQueryTimerRunning:Z

.field private mIsScreenOn:Z

.field private mLayoutDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLayoutNumver:I

.field private mMusicInfoView:Lcom/sonymobile/keyguard/aod/MusicInfoView;

.field private mPhotoPlaybackObserver:Landroid/database/ContentObserver;

.field private mPhotoType:I

.field private mRandom:Ljava/util/Random;

.field private final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mShouldShowMusicInfo:Z

.field private mShouldShowSticker:Z

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStickerView:Lcom/sonymobile/keyguard/aod/StickerView;

.field private mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

.field private mUpdated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 150
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 70
    iput-boolean p2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mDozing:Z

    .line 72
    iput p2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mLayoutNumver:I

    .line 78
    iput-boolean p2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mIsCheckConditions:Z

    .line 79
    iput-boolean p2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mIsQueryTimerRunning:Z

    .line 80
    iput-boolean p2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mIsQueryTimeout:Z

    .line 81
    iput-boolean p2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mIsScreenOn:Z

    .line 82
    iput-boolean p2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mShouldShowMusicInfo:Z

    .line 83
    iput-boolean p2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mShouldShowSticker:Z

    .line 84
    iput-boolean p2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mUpdated:Z

    const/4 p2, -0x1

    .line 88
    iput p2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mDozeMode:I

    .line 91
    iput p2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mPhotoType:I

    .line 99
    new-instance p2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$1;

    invoke-direct {p2, p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$1;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)V

    iput-object p2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mHandler:Landroid/os/Handler;

    .line 116
    new-instance p2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$2;

    invoke-direct {p2, p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$2;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)V

    iput-object p2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 133
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mImageViews:Ljava/util/ArrayList;

    .line 147
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mLayoutDatas:Ljava/util/ArrayList;

    .line 559
    new-instance p2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$6;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, v0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$6;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mPhotoPlaybackObserver:Landroid/database/ContentObserver;

    .line 151
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mContext:Landroid/content/Context;

    .line 152
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    iput-object p2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mRandom:Ljava/util/Random;

    .line 153
    iget-object p2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$integer;->somc_keyguard_photoplayback_default_alpha:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    iput p2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mDefaultAlpha:F

    const-string p2, "alarm"

    .line 155
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mAlarmManager:Landroid/app/AlarmManager;

    .line 156
    new-instance p1, Lcom/android/systemui/util/AlarmTimeout;

    iget-object p2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v0, Lcom/sonymobile/keyguard/aod/-$$Lambda$PhotoPlaybackView$mbeOwanoUeEmzhPOnMo_ZC1NOOg;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/aod/-$$Lambda$PhotoPlaybackView$mbeOwanoUeEmzhPOnMo_ZC1NOOg;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-string v2, "aod_photo_playback_delete"

    invoke-direct {p1, p2, v0, v2, v1}, Lcom/android/systemui/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    .line 158
    const-class p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object p2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {p1, p2}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 159
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->initLayoutData()V

    return-void
.end method

.method private QueryTimeout()V
    .locals 1

    const/4 v0, 0x1

    .line 458
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mIsQueryTimeout:Z

    .line 459
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->showMusicInfoOrSticker()V

    return-void
.end method

.method private QueryTimer()V
    .locals 4

    .line 452
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x1

    .line 453
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mIsQueryTimerRunning:Z

    .line 454
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->prepareMusicInfoView()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->handleShow()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->QueryTimeout()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->screenUpdate()V

    return-void
.end method

.method static synthetic access$1102(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mAsyncTaskCheckConditions:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;Landroid/net/Uri;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->prepareImageView(Landroid/net/Uri;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)Landroid/os/Handler;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->showMusicInfoOrSticker()V

    return-void
.end method

.method static synthetic access$302(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mUpdated:Z

    return p0
.end method

.method static synthetic access$402(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mUpdated:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mDozing:Z

    return p0
.end method

.method static synthetic access$600(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mIsCheckConditions:Z

    return p0
.end method

.method static synthetic access$602(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mIsCheckConditions:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mDozeMode:I

    return p0
.end method

.method static synthetic access$800(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->updatephotoPlayback()V

    return-void
.end method

.method static synthetic access$900(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)Z
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->checkConditions()Z

    move-result p0

    return p0
.end method

.method private calculateAlphaValue()V
    .locals 4

    .line 310
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "somc_photoplayback_dimmer"

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 312
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->isUserdebugVariant()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 314
    iput v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mAlpha:F

    goto :goto_0

    .line 316
    :cond_0
    iget v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mDefaultAlpha:F

    iput v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mAlpha:F

    :goto_0
    return-void
.end method

.method private checkConditions()Z
    .locals 2

    .line 347
    invoke-static {}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackProviderUtils;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mContext:Landroid/content/Context;

    .line 348
    invoke-static {v0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackProviderUtils;->isPhotoPlaybackContentProviderAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mContext:Landroid/content/Context;

    .line 349
    invoke-static {v0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackProviderUtils;->isPhotoPlaybackApplicationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mContext:Landroid/content/Context;

    .line 350
    invoke-static {v0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackProviderUtils;->isPhotoPlaybackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackProviderUtils;->getPhotoPlaybackMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mContext:Landroid/content/Context;

    .line 352
    invoke-static {v0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackProviderUtils;->getPhotoPlaybackMode(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 353
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->isPermissionAllowed()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static convertDp2Px(ILandroid/content/Context;)F
    .locals 0

    .line 591
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    int-to-float p0, p0

    .line 592
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, p1

    return p0
.end method

.method private getDemoImage(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 7

    const-string v0, "PhotoPlaybackView"

    .line 596
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 601
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 600
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 603
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v5, "drawable"

    .line 604
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 603
    invoke-virtual {p0, v2, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 606
    :try_start_1
    invoke-virtual {p0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 608
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resouce name:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 611
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method

.method private handleShow()V
    .locals 4

    .line 536
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 539
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mAlpha:F

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x3e8

    .line 540
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 541
    iget-object v1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mContext:Landroid/content/Context;

    const v2, 0x10a000b

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 542
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    const/4 v1, 0x0

    .line 543
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 544
    iget-object v2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 545
    iget-object v2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 547
    iget-object v3, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 549
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 550
    iget-object v2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 553
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    const-wide/32 v1, 0x927c0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/util/AlarmTimeout;->schedule(JI)Z

    .line 554
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackProviderUtils;->getPhotoPlaybackMode(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_4

    .line 555
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackSharedPreferences;->setPhotoplaybackSharedPrefOobeShown(Landroid/content/Context;)V

    :cond_4
    return-void
.end method

.method private initLayoutData()V
    .locals 16

    move-object/from16 v0, p0

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 164
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v3, 0x78

    const/16 v4, -0x66

    const/16 v5, 0xdd

    invoke-direct {v2, v0, v4, v5, v3}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v4, 0x96

    const/16 v5, -0x11d

    const/16 v6, 0x81

    invoke-direct {v2, v0, v6, v5, v4}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v6, 0x9c

    const/16 v7, 0x64

    const/16 v8, 0x14a

    invoke-direct {v2, v0, v6, v8, v7}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v8, 0x3c

    const/16 v9, -0x9b

    const/16 v10, -0x139

    invoke-direct {v2, v0, v9, v10, v8}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v2, v0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mLayoutDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 170
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v9, 0x8c

    const/16 v10, 0x8e

    const/16 v11, 0x12b

    invoke-direct {v2, v0, v10, v11, v9}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v10, -0x61

    const/16 v11, -0xf7

    invoke-direct {v2, v0, v10, v11, v3}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v11, -0xa0

    const/16 v12, 0xc3

    invoke-direct {v2, v0, v11, v12, v8}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v11, 0x98

    const/16 v12, 0x50

    const/16 v13, -0xde

    invoke-direct {v2, v0, v11, v13, v12}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v2, v0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mLayoutDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v13, 0xaa

    const/16 v14, -0x4a

    const/16 v15, 0x181

    invoke-direct {v2, v0, v14, v15, v13}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v14, -0xca

    invoke-direct {v2, v0, v6, v14, v3}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v14, -0x7e

    const/16 v15, -0x122

    invoke-direct {v2, v0, v14, v15, v12}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v14, 0x9e

    const/16 v15, 0xa4

    invoke-direct {v2, v0, v15, v14, v8}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v2, v0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mLayoutDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v15, -0x97

    const/16 v14, 0x103

    invoke-direct {v2, v0, v15, v14, v13}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v14, -0x9c

    invoke-direct {v2, v0, v6, v14, v12}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v6, -0x36

    const/16 v13, -0x155

    invoke-direct {v2, v0, v6, v13, v12}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v6, 0x72

    const/16 v13, 0x13c

    invoke-direct {v2, v0, v6, v13, v8}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v2, v0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mLayoutDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 188
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v6, 0x7f

    const/16 v13, 0x116

    const/16 v15, 0xa0

    invoke-direct {v2, v0, v6, v13, v15}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v6, -0x67

    const/16 v13, -0xfd

    invoke-direct {v2, v0, v6, v13, v3}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v6, 0x104

    invoke-direct {v2, v0, v14, v6, v12}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v6, 0x73

    const/16 v13, -0xe3

    invoke-direct {v2, v0, v6, v13, v8}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v2, v0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mLayoutDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 194
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v6, -0x96

    const/16 v13, 0xef

    invoke-direct {v2, v0, v6, v13, v4}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v4, 0x82

    const/16 v6, -0x103

    invoke-direct {v2, v0, v4, v6, v7}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v4, 0xac

    const/16 v6, 0x162

    invoke-direct {v2, v0, v4, v6, v3}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v4, -0x94

    const/16 v6, -0x15f

    invoke-direct {v2, v0, v4, v6, v7}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v2, v0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mLayoutDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 200
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v4, 0x10d

    invoke-direct {v2, v0, v7, v4, v3}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v4, -0x12d

    invoke-direct {v2, v0, v10, v4, v3}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v3, -0x99

    invoke-direct {v2, v0, v11, v3, v12}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v3, -0x65

    const/16 v4, 0xa9

    invoke-direct {v2, v0, v3, v4, v8}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v2, v0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mLayoutDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 206
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v3, -0x60

    const/16 v4, 0x172

    const/16 v6, 0xa0

    invoke-direct {v2, v0, v3, v4, v6}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v3, 0xa2

    invoke-direct {v2, v0, v3, v5, v9}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v3, -0x96

    const/16 v4, -0xdc

    invoke-direct {v2, v0, v3, v4, v12}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v3, 0x89

    const/16 v4, 0x9e

    invoke-direct {v2, v0, v3, v4, v8}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v2, v0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mLayoutDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v3, 0x103

    const/16 v4, -0x97

    const/16 v5, 0xaa

    invoke-direct {v2, v0, v4, v3, v5}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v3, -0xc2

    const/16 v4, 0x9c

    invoke-direct {v2, v0, v4, v3, v7}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v3, -0x64

    const/16 v4, -0x105

    invoke-direct {v2, v0, v3, v4, v8}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v3, 0xf3

    const/16 v4, 0xa4

    invoke-direct {v2, v0, v4, v3, v8}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v2, v0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mLayoutDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v3, 0x8d

    const/16 v4, 0x11b

    invoke-direct {v2, v0, v3, v4, v7}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v3, -0x8e

    const/16 v4, -0x124

    invoke-direct {v2, v0, v3, v4, v9}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v3, 0xec

    invoke-direct {v2, v0, v14, v3, v12}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    const/16 v3, 0x83

    const/16 v4, -0x106

    invoke-direct {v2, v0, v3, v4, v8}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v2, v0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mLayoutDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v1, v0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 226
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 228
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 229
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 231
    iget v1, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mCenterX:I

    .line 232
    iget v1, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mCenterY:I

    return-void
.end method

.method private isPermissionAllowed()Z
    .locals 3

    .line 362
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackProviderUtils;->queryForStatus(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 364
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    .line 366
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 367
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v0, v2

    .line 373
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v0
.end method

.method private isUserdebugVariant()Z
    .locals 1

    .line 306
    sget-object p0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v0, "userdebug"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$mbeOwanoUeEmzhPOnMo_ZC1NOOg(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->onDeletePhotoPlaybackTimeout()V

    return-void
.end method

.method private onDeletePhotoPlaybackTimeout()V
    .locals 5

    .line 617
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mAlpha:F

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x3e8

    .line 618
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 619
    iget-object v3, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mContext:Landroid/content/Context;

    const v4, 0x10a000b

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/content/Context;I)V

    const/4 v3, 0x0

    .line 620
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 621
    iget-object v4, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 622
    iget-object v4, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 625
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 626
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 627
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->resetFFMessage()V

    .line 630
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x66

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private prepareImageView(Landroid/net/Uri;I)V
    .locals 5

    .line 492
    new-instance v0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;

    iget-object v1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mFingerPrintFeedBackView:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;-><init>(Landroid/content/Context;Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;)V

    .line 496
    iget-object v1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mLayoutDatas:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mLayoutNumver:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    iget v1, v1, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;->x:I

    iget-object v2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->convertDp2Px(ILandroid/content/Context;)F

    move-result v1

    .line 497
    iget-object v2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mLayoutDatas:Ljava/util/ArrayList;

    iget v3, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mLayoutNumver:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    iget v2, v2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;->y:I

    iget-object v3, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->convertDp2Px(ILandroid/content/Context;)F

    move-result v2

    .line 498
    iget-object v3, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mLayoutDatas:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mLayoutNumver:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;

    iget p2, p2, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$LayoutData;->radius:I

    iget-object v3, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mContext:Landroid/content/Context;

    invoke-static {p2, v3}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->convertDp2Px(ILandroid/content/Context;)F

    move-result p2

    .line 501
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, p2

    float-to-int v4, v4

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 504
    iget v4, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mCenterX:I

    sub-float/2addr v1, p2

    float-to-int v1, v1

    add-int/2addr v4, v1

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 505
    iget v1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mCenterY:I

    sub-float/2addr v2, p2

    float-to-int p2, v2

    add-int/2addr v1, p2

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 507
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    invoke-static {p1}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackProviderUtils;->hasContentScheme(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 510
    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->setUri(Landroid/net/Uri;)Z

    move-result p2

    goto :goto_0

    .line 511
    :cond_0
    invoke-static {p1}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackProviderUtils;->hasDemoScheme(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 513
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->getDemoImage(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 515
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    .line 517
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->showDemoMessage()V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 521
    new-instance p1, Lcom/sonymobile/keyguard/aod/-$$Lambda$PhotoPlaybackView$-Mkp29SmWFlPwlzxM8GiWLTwfQA;

    invoke-direct {p1, p0}, Lcom/sonymobile/keyguard/aod/-$$Lambda$PhotoPlaybackView$-Mkp29SmWFlPwlzxM8GiWLTwfQA;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)V

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView;->setOnDoubleTapListener(Lcom/sonymobile/keyguard/aod/PhotoPlaybackImageView$onDoubleTapListener;)V

    .line 526
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 528
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "prepareImageView failed to set uri:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PhotoPlaybackView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private prepareMusicInfoView()V
    .locals 2

    .line 463
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mShouldShowMusicInfo:Z

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mStickerView:Lcom/sonymobile/keyguard/aod/StickerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 465
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mMusicInfoView:Lcom/sonymobile/keyguard/aod/MusicInfoView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private registerPhotoPlaybackObserver()V
    .locals 3

    .line 576
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/keyguard/aod/PhotoPlaybackProviderContract$Uris;->PHOTO:Landroid/net/Uri;

    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mPhotoPlaybackObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private resetFFMessage()V
    .locals 4

    .line 663
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mFingerPrintFeedBackView:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 664
    invoke-virtual {v0, v3, v1, v2}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->setPhotoPlayBackDemoMode(ZJ)V

    .line 665
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mFingerPrintFeedBackView:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

    invoke-virtual {p0, v3}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->showAlbumDisabledMessage(Z)V

    :cond_0
    return-void
.end method

.method private screenUpdate()V
    .locals 2

    .line 321
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mIsCheckConditions:Z

    if-nez v0, :cond_0

    .line 322
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 325
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mDozing:Z

    if-eqz v0, :cond_5

    .line 326
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 327
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 328
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mRandom:Ljava/util/Random;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mLayoutNumver:I

    .line 329
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->registerPhotoPlaybackObserver()V

    .line 331
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPickupOn()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    .line 333
    iput v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mDozeMode:I

    goto :goto_0

    .line 334
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getSmartOn()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 335
    iput v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mDozeMode:I

    goto :goto_0

    .line 336
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 337
    iput v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mDozeMode:I

    .line 340
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mIsScreenOn:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mDozeMode:I

    if-nez v0, :cond_5

    .line 341
    :cond_4
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->updatephotoPlayback()V

    :cond_5
    return-void
.end method

.method private showDemoMessage()V
    .locals 3

    .line 657
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mFingerPrintFeedBackView:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    const-wide/16 v1, 0xbb8

    .line 658
    invoke-virtual {p0, v0, v1, v2}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->setPhotoPlayBackDemoMode(ZJ)V

    :cond_0
    return-void
.end method

.method private showMusicInfoOrSticker()V
    .locals 3

    .line 470
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mStickerView:Lcom/sonymobile/keyguard/aod/StickerView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mMusicInfoView:Lcom/sonymobile/keyguard/aod/MusicInfoView;

    .line 471
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x3e8

    .line 478
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 479
    iget-object v1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mContext:Landroid/content/Context;

    const v2, 0x10a000b

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 480
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 482
    iget-boolean v1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mShouldShowMusicInfo:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    .line 483
    iget-object v1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mStickerView:Lcom/sonymobile/keyguard/aod/StickerView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 484
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mMusicInfoView:Lcom/sonymobile/keyguard/aod/MusicInfoView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 485
    :cond_1
    iget-boolean v1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mShouldShowSticker:Z

    if-eqz v1, :cond_2

    .line 486
    iget-object v1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mMusicInfoView:Lcom/sonymobile/keyguard/aod/MusicInfoView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 487
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mStickerView:Lcom/sonymobile/keyguard/aod/StickerView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private unregisterPhotoPlaybackObserver()V
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mPhotoPlaybackObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updatephotoPlayback()V
    .locals 8

    .line 379
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackProviderUtils;->queryForPhoto(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 381
    iget-boolean v1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mIsQueryTimerRunning:Z

    if-nez v1, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->QueryTimer()V

    .line 386
    :cond_0
    iget-boolean v1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mIsQueryTimeout:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 388
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :cond_2
    if-nez v0, :cond_3

    goto :goto_2

    .line 396
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_4

    .line 400
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 406
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    .line 409
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 410
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    .line 412
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->unregisterPhotoPlaybackObserver()V

    :goto_0
    if-eqz v3, :cond_5

    const/4 v3, 0x1

    .line 414
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x2

    .line 417
    :try_start_0
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mPhotoType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 419
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get cursor.getInt(2) failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PhotoPlaybackView"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :goto_1
    new-instance v5, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$4;

    invoke-direct {v5, p0, v4, v1, v2}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$4;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;Landroid/net/Uri;ILjava/util/concurrent/CountDownLatch;)V

    .line 426
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 427
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    add-int/2addr v1, v3

    move v3, v4

    goto :goto_0

    .line 430
    :cond_5
    iget-object v1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mPhotoType:I

    invoke-static {v1, v3}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsPhotoPlaybackPhotoShownReporter;->sendEvent(Landroid/content/Context;I)V

    .line 432
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 434
    new-instance v0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$5;

    invoke-direct {v0, p0, v2}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$5;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;Ljava/util/concurrent/CountDownLatch;)V

    .line 447
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_2
    return-void
.end method


# virtual methods
.method public synthetic lambda$prepareImageView$0$PhotoPlaybackView()V
    .locals 4

    .line 522
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "DOUBLE_TAP_TO_PHOTO"

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mPhotoType:I

    invoke-static {v0, p0}, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsPhotoPlaybackPhotoTappedReporter;->sendEvent(Landroid/content/Context;I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 240
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method public setDozing(Z)V
    .locals 2

    .line 247
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mDozing:Z

    .line 249
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->resetFFMessage()V

    .line 251
    iget-boolean p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mDozing:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->calculateAlphaValue()V

    .line 254
    new-instance p1, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$3;

    invoke-direct {p1, p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$3;-><init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)V

    new-array v0, v0, [Ljava/lang/Void;

    .line 272
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mAsyncTaskCheckConditions:Landroid/os/AsyncTask;

    goto :goto_0

    .line 274
    :cond_0
    iget-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mAsyncTaskCheckConditions:Landroid/os/AsyncTask;

    if-eqz p1, :cond_1

    .line 276
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 p1, 0x0

    .line 277
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mAsyncTaskCheckConditions:Landroid/os/AsyncTask;

    .line 280
    :cond_1
    iget-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 281
    iget-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 282
    iget-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 283
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 284
    iget-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mImageViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 285
    iget-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mMusicInfoView:Lcom/sonymobile/keyguard/aod/MusicInfoView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 286
    iget-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mStickerView:Lcom/sonymobile/keyguard/aod/StickerView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 287
    iget-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {p1}, Lcom/android/systemui/util/AlarmTimeout;->cancel()V

    .line 288
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->unregisterPhotoPlaybackObserver()V

    const/4 p1, -0x1

    .line 289
    iput p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mDozeMode:I

    .line 290
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mIsCheckConditions:Z

    .line 291
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mIsQueryTimerRunning:Z

    .line 292
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mIsQueryTimeout:Z

    .line 293
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mShouldShowMusicInfo:Z

    .line 294
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mShouldShowSticker:Z

    .line 295
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mUpdated:Z

    :goto_0
    return-void
.end method

.method public setFFView(Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;)V
    .locals 0

    .line 643
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mFingerPrintFeedBackView:Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;

    return-void
.end method

.method public setMusicInfoAndStickerView(Lcom/sonymobile/keyguard/aod/MusicInfoView;Lcom/sonymobile/keyguard/aod/StickerView;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mMusicInfoView:Lcom/sonymobile/keyguard/aod/MusicInfoView;

    .line 648
    iput-object p2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mStickerView:Lcom/sonymobile/keyguard/aod/StickerView;

    return-void
.end method

.method public setShouldShowMusicInfoOrSticker(ZZ)V
    .locals 0

    .line 652
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mShouldShowMusicInfo:Z

    .line 653
    iput-boolean p2, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mShouldShowSticker:Z

    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 639
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method
