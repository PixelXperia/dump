.class public Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;
.super Ljava/lang/Object;
.source "LockscreenLoopsController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LockscreenLoopsController"


# instance fields
.field private mAodView:Lcom/sonymobile/keyguard/aod/AodView;

.field private mBouncer:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mDozing:Z

.field private mKeyguardStatus:I

.field private mLlcCurrentCallback:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;

.field private mLlcDozingCallback:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;

.field private mLlcNormalCallback:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;

.field private mLoopsServiceCallback:Lcom/sonymobile/xperiaxloops/IXperiaXLoopsServiceCallback;

.field private mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mService:Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mDozing:Z

    .line 67
    iput-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mBouncer:Z

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mKeyguardStatus:I

    .line 77
    new-instance v0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$1;-><init>(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mConnection:Landroid/content/ServiceConnection;

    .line 89
    new-instance v0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$2;-><init>(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mLoopsServiceCallback:Lcom/sonymobile/xperiaxloops/IXperiaXLoopsServiceCallback;

    .line 106
    new-instance v0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController$3;-><init>(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 167
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mContext:Landroid/content/Context;

    .line 168
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 169
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method static synthetic access$002(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;)Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mService:Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;)Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mLlcCurrentCallback:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->updateKeyguardStatus()V

    return-void
.end method

.method static synthetic access$302(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mBouncer:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->handleFPAEvent(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mDozing:Z

    return p0
.end method

.method static synthetic access$700(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->sendScreenStatus(I)V

    return-void
.end method

.method static synthetic access$802(Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mKeyguardStatus:I

    return p1
.end method

.method private connect()V
    .locals 3

    .line 183
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sonymobile.xperiaxloops"

    const-string v2, "com.sonymobile.xperiaxloops.XperiaXLoopsService"

    .line 184
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private handleFPAEvent(I)V
    .locals 4

    .line 406
    iget-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mDozing:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mAodView:Lcom/sonymobile/keyguard/aod/AodView;

    if-eqz v0, :cond_2

    .line 408
    invoke-virtual {v0}, Lcom/sonymobile/keyguard/aod/AodView;->getClockViewPosition()Landroid/graphics/Rect;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 410
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->sendFPAResult(IFFF)V

    goto :goto_0

    .line 413
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mBouncer:Z

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_2

    .line 415
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    .line 416
    iget-object v2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v1

    int-to-float v0, v0

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v0, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    .line 417
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->sendFPAResult(IFFF)V

    goto :goto_0

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_2

    .line 421
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardClockBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 423
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 424
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->sendFPAResult(IFFF)V

    :cond_2
    :goto_0
    return-void
.end method

.method private registerCallback(I)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mService:Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mLoopsServiceCallback:Lcom/sonymobile/xperiaxloops/IXperiaXLoopsServiceCallback;

    if-eqz p0, :cond_0

    .line 218
    :try_start_0
    invoke-interface {v0, p1, p0}, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;->registerCallback(ILcom/sonymobile/xperiaxloops/IXperiaXLoopsServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 220
    sget-object p1, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private sendFPAResult(IFFF)V
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mService:Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;

    if-eqz v0, :cond_0

    .line 442
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "POS_X"

    .line 443
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p2, "POS_Y"

    .line 444
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p2, "RADIUS"

    .line 445
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 446
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mService:Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;

    invoke-interface {p0, p1, v0}, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;->sendFPAResult(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 448
    sget-object p1, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private sendKeyguardStatus(I)V
    .locals 0

    .line 396
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mService:Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;

    if-eqz p0, :cond_0

    .line 398
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;->sendKeyguardStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 400
    sget-object p1, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private sendScreenStatus(I)V
    .locals 0

    .line 459
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mService:Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;

    if-eqz p0, :cond_0

    .line 461
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;->sendScreenStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 463
    sget-object p1, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private unregisterCallback(I)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mService:Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mLoopsServiceCallback:Lcom/sonymobile/xperiaxloops/IXperiaXLoopsServiceCallback;

    if-eqz p0, :cond_0

    .line 256
    :try_start_0
    invoke-interface {v0, p1, p0}, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;->unregisterCallback(ILcom/sonymobile/xperiaxloops/IXperiaXLoopsServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 258
    sget-object p1, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private updateKeyguardStatus()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    iget-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mDozing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 193
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mBouncer:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    .line 200
    :goto_0
    iget v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mKeyguardStatus:I

    if-eq v0, v1, :cond_3

    .line 201
    iput v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mKeyguardStatus:I

    .line 202
    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->sendKeyguardStatus(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public init(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/sonymobile/keyguard/aod/AodView;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 174
    iput-object p2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mAodView:Lcom/sonymobile/keyguard/aod/AodView;

    .line 175
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->connect()V

    .line 176
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->updateKeyguardStatus()V

    return-void
.end method

.method public isConnected()Z
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mService:Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onThemeChanged()V
    .locals 3

    .line 287
    const-class v0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    .line 288
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    sget v1, Lcom/android/systemui/R$color;->somc_keyguard_theme_color_solid_foreground:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    goto :goto_0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 296
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->setLoopsColorOnLockscreen(I)V

    return-void
.end method

.method public registerCallback(ILcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;Z)V
    .locals 1

    if-eqz p3, :cond_0

    .line 235
    iput-object p2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mLlcDozingCallback:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;

    goto :goto_0

    .line 237
    :cond_0
    iput-object p2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mLlcNormalCallback:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;

    .line 239
    :goto_0
    iget-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mDozing:Z

    if-eq p3, v0, :cond_1

    return-void

    .line 242
    :cond_1
    iput-object p2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mLlcCurrentCallback:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;

    .line 244
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->registerCallback(I)V

    return-void
.end method

.method public requestAssistEmphasis(ZFFFF)V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mService:Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;

    if-eqz v0, :cond_0

    .line 376
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ICON_EMPHASIS"

    .line 377
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "ICON_X"

    .line 378
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p1, "ICON_Y"

    .line 379
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p1, "ICON_WIDTH"

    .line 380
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p1, "ICON_HEIGHT"

    .line 381
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 383
    :try_start_0
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mService:Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;

    invoke-interface {p0, v0}, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;->requestAssistEmphasis(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 385
    sget-object p1, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setDozing(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 344
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mLlcNormalCallback:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;

    if-eqz v0, :cond_0

    .line 345
    invoke-interface {v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;->stopClockForDozing()V

    .line 347
    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mDozing:Z

    .line 348
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mLlcDozingCallback:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;

    if-eqz p1, :cond_3

    .line 349
    invoke-interface {p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;->restartClockForDozing()V

    goto :goto_0

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mLlcDozingCallback:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;

    if-eqz v0, :cond_2

    .line 353
    invoke-interface {v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;->stopClockForDozing()V

    .line 355
    :cond_2
    iput-boolean p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mDozing:Z

    .line 356
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mLlcNormalCallback:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;

    if-eqz p1, :cond_3

    .line 357
    invoke-interface {p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;->restartClockForDozing()V

    .line 361
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->updateKeyguardStatus()V

    return-void
.end method

.method public setLoopsColorOnAmbient()V
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mService:Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;

    if-eqz v0, :cond_1

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 323
    sget v1, Lcom/android/systemui/R$integer;->config_aodScrimOpacity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const v1, 0xffffff

    if-lez v0, :cond_0

    rsub-int v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x10

    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v1, v2

    or-int/2addr v1, v0

    .line 329
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mService:Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;

    invoke-interface {p0, v1}, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;->setLoopsColorOnAmbient(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 332
    sget-object v0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setLoopsColorOnLockscreen(I)V
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mService:Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;

    if-eqz p0, :cond_0

    .line 307
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;->setLoopsColorOnLockscreen(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 309
    sget-object p1, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterCallback(IZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 271
    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mLlcDozingCallback:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;

    goto :goto_0

    .line 273
    :cond_0
    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mLlcNormalCallback:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;

    .line 275
    :goto_0
    iget-boolean v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mDozing:Z

    if-eq p2, v1, :cond_1

    return-void

    .line 278
    :cond_1
    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->mLlcCurrentCallback:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;

    .line 280
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->unregisterCallback(I)V

    return-void
.end method
