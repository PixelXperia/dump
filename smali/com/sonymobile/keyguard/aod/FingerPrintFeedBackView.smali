.class public Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;
.super Landroid/widget/FrameLayout;
.source "FingerPrintFeedBackView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$FingerprintFBCallBack;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLockscreenStyleCoverController:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

.field private mPhotoPlaybackDemoMode:Z

.field private final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mShouldShowAlbumDisabledMessage:Z

.field private mShouldShowFingerPrintMessage:Z

.field private mStyleCoverCallback:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverControllerCallback;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 60
    iput-boolean p2, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mPhotoPlaybackDemoMode:Z

    .line 61
    iput-boolean p2, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mShouldShowAlbumDisabledMessage:Z

    .line 62
    iput-boolean p2, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mShouldShowFingerPrintMessage:Z

    .line 66
    new-instance p2, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$1;

    invoke-direct {p2, p0}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$1;-><init>(Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;)V

    iput-object p2, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 85
    new-instance p2, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$2;

    invoke-direct {p2, p0}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$2;-><init>(Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;)V

    iput-object p2, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mStyleCoverCallback:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverControllerCallback;

    .line 141
    new-instance p2, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$3;

    invoke-direct {p2, p0}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$3;-><init>(Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;)V

    iput-object p2, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mHandler:Landroid/os/Handler;

    .line 77
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->registerCallbacks(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 80
    const-class p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object p2, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {p1, p2}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 81
    const-class p1, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mLockscreenStyleCoverController:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

    .line 82
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->setDefautMessage()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mShouldShowFingerPrintMessage:Z

    return p0
.end method

.method static synthetic access$002(Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mShouldShowFingerPrintMessage:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->setDefautMessage()V

    return-void
.end method

.method static synthetic access$302(Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mPhotoPlaybackDemoMode:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->setTransientMessage(Ljava/lang/String;)V

    return-void
.end method

.method private getDoubleTapCount(I)I
    .locals 2

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aod_double_tap_count_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 249
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "AodSharedPref"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 251
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private isOverDoubleTapMaxCount(I)Z
    .locals 0

    const/4 p0, 0x3

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private registerCallbacks(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 201
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->getFBCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private setDefautMessage()V
    .locals 8

    .line 163
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 164
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 165
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 167
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mPhotoPlaybackDemoMode:Z

    const-wide/16 v3, 0x3a98

    if-eqz v0, :cond_0

    .line 168
    sget v0, Lcom/android/systemui/R$string;->somc_keyguard_guide_photo_playback:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->switchIndication(I)V

    .line 169
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 171
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mShouldShowAlbumDisabledMessage:Z

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/android/systemui/R$string;->lockscreen_ambient_recall_disable_toast_error_txt:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 174
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackProviderUtils;->getAlbumApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    .line 172
    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 175
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 178
    :cond_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 179
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->getDoubleTapCount(I)I

    move-result v0

    .line 180
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->isOverDoubleTapMaxCount(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    .line 181
    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->switchIndication(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 183
    :cond_2
    sget v0, Lcom/android/systemui/R$string;->somc_keyguard_unlock_guide_ambient:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->switchIndication(I)V

    .line 184
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method private setDoubleTapCount(II)V
    .locals 2

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aod_double_tap_count_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 256
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mContext:Landroid/content/Context;

    const-string v0, "AodSharedPref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 258
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 259
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 260
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setTransientMessage(Ljava/lang/String;)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    iput-boolean v1, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mShouldShowFingerPrintMessage:Z

    .line 196
    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 197
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method protected getFBCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$FingerprintFBCallBack;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView$FingerprintFBCallBack;-><init>(Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 208
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 97
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 98
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mLockscreenStyleCoverController:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mStyleCoverCallback:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverControllerCallback;

    invoke-virtual {v0, p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->registerCallback(Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverControllerCallback;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 269
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 270
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->setDefautMessage()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 103
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 104
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mLockscreenStyleCoverController:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mStyleCoverCallback:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverControllerCallback;

    invoke-virtual {v0, p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->removeCallback(Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverControllerCallback;)V

    return-void
.end method

.method public onParentDoubleTap()V
    .locals 3

    .line 236
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 237
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->getDoubleTapCount(I)I

    move-result v1

    .line 238
    invoke-direct {p0, v1}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->isOverDoubleTapMaxCount(I)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 240
    invoke-direct {p0, v1, v0}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->setDoubleTapCount(II)V

    .line 241
    invoke-direct {p0, v1}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->isOverDoubleTapMaxCount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->setDefautMessage()V

    :cond_0
    return-void
.end method

.method public setPhotoPlayBackDemoMode(ZJ)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 275
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mPhotoPlaybackDemoMode:Z

    .line 276
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 278
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mPhotoPlaybackDemoMode:Z

    .line 279
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public showAlbumDisabledMessage(Z)V
    .locals 0

    .line 284
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mShouldShowAlbumDisabledMessage:Z

    .line 285
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public switchIndication(I)V
    .locals 1

    .line 138
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->switchIndication(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public switchIndication(Ljava/lang/CharSequence;)V
    .locals 6

    .line 108
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 109
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/keyguard/aod/FingerPrintFeedBackView;->mLockscreenStyleCoverController:Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;

    .line 111
    invoke-virtual {v1}, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->isStyleCoverViewSelectedAndClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 112
    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 p1, -0x1

    .line 116
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 117
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 118
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$drawable;->somc_aod_messages_bg:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 119
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 120
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 121
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_2
    const/16 p1, 0x11

    .line 123
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 125
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 128
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v4, 0x1

    .line 127
    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    const/high16 v3, 0x42400000    # 48.0f

    .line 130
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 129
    invoke-static {v4, v3, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 131
    invoke-virtual {p1, v2, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0x51

    .line 132
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 134
    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
