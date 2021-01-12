.class public Lcom/sonymobile/runtimeskinning/SkinningBridge;
.super Ljava/lang/Object;
.source "SkinningBridge.java"


# static fields
.field private static final BAR_TRANSITIONS_TO_NAME:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCK:Ljava/lang/Object;

.field private static final ORIENTATION_TO_NAME:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SkinningBridge"

.field private static final WINDOW_STATE_TO_NAME:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sActiveProtocolVersion:Ljava/lang/String;

.field private static final sButtonMappings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sClockPickerDimens:Landroid/util/Size;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "LOCK"
        }
    .end annotation
.end field

.field private static sConnection:Landroid/content/ServiceConnection;

.field private static sCurrentServiceComponent:Landroid/content/ComponentName;

.field private static sDefaultClockPickerDimens:Landroid/util/Size;

.field private static sIsStatusBarCloaked:Z

.field private static final sKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private static sLastNavBarWindowState:Ljava/lang/String;

.field private static sLastStatusBarWindowState:Ljava/lang/String;

.field private static sLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field private static sLightBarControllerRefresher:Ljava/lang/Runnable;

.field private static final sLocationBuffer:[I

.field private static sNavbarView:Landroid/view/View;

.field private static sRemoteEndpoint:Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;

.field private static final sSkinnableReceiver:Landroid/content/BroadcastReceiver;

.field private static sStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private static sStatusBarBackgroundColor:Ljava/lang/String;

.field private static sStatusBarView:Landroid/view/View;

.field private static sThemeableClockFactoryClass:Ljava/lang/String;

.field private static final sTransferHistory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 108
    new-instance v0, Lcom/sonymobile/runtimeskinning/SkinningBridge$1;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/sonymobile/runtimeskinning/SkinningBridge$1;-><init>(I)V

    sput-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->BAR_TRANSITIONS_TO_NAME:Landroid/util/SparseArray;

    .line 122
    new-instance v0, Lcom/sonymobile/runtimeskinning/SkinningBridge$2;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/sonymobile/runtimeskinning/SkinningBridge$2;-><init>(I)V

    sput-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->ORIENTATION_TO_NAME:Landroid/util/SparseArray;

    .line 133
    new-instance v0, Lcom/sonymobile/runtimeskinning/SkinningBridge$3;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/sonymobile/runtimeskinning/SkinningBridge$3;-><init>(I)V

    sput-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->WINDOW_STATE_TO_NAME:Landroid/util/SparseArray;

    .line 142
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->LOCK:Ljava/lang/Object;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sTransferHistory:Ljava/util/Map;

    .line 157
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sButtonMappings:Landroid/util/SparseArray;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 162
    sput-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sLocationBuffer:[I

    const-string v0, "auto"

    .line 172
    sput-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sStatusBarBackgroundColor:Ljava/lang/String;

    const-string v0, "shown"

    .line 220
    sput-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sLastNavBarWindowState:Ljava/lang/String;

    .line 226
    sput-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sLastStatusBarWindowState:Ljava/lang/String;

    const/16 v0, -0x2710

    .line 237
    sput v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sUserId:I

    .line 242
    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sDefaultClockPickerDimens:Landroid/util/Size;

    .line 248
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sClockPickerDimens:Landroid/util/Size;

    .line 255
    sget-object v0, Lcom/sonymobile/runtimeskinning/-$$Lambda$SkinningBridge$I7g5usEQzcMy-XgEqi9heM4Y-Ww;->INSTANCE:Lcom/sonymobile/runtimeskinning/-$$Lambda$SkinningBridge$I7g5usEQzcMy-XgEqi9heM4Y-Ww;

    sput-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    .line 264
    new-instance v0, Lcom/sonymobile/runtimeskinning/SkinningBridge$4;

    invoke-direct {v0}, Lcom/sonymobile/runtimeskinning/SkinningBridge$4;-><init>()V

    sput-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sSkinnableReceiver:Landroid/content/BroadcastReceiver;

    .line 313
    new-instance v0, Lcom/sonymobile/runtimeskinning/SkinningBridge$5;

    invoke-direct {v0}, Lcom/sonymobile/runtimeskinning/SkinningBridge$5;-><init>()V

    sput-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 61
    sget v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sUserId:I

    return v0
.end method

.method static synthetic access$100(ZZ)V
    .locals 0

    .line 61
    invoke-static {p0, p1}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->setLockscreenClockAvailable(ZZ)V

    return-void
.end method

.method static synthetic access$1000()Landroid/view/View;
    .locals 1

    .line 61
    sget-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sNavbarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    sput-object p0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sStatusBarBackgroundColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Z)V
    .locals 0

    .line 61
    invoke-static {p0}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->setStatusbarCloaked(Z)V

    return-void
.end method

.method static synthetic access$1300(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-static {p0}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->getSettingsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(II)V
    .locals 0

    .line 61
    invoke-static {p0, p1}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->setPreferredLockScreenClockDimens(II)V

    return-void
.end method

.method static synthetic access$1500()Ljava/util/Map;
    .locals 1

    .line 61
    sget-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sTransferHistory:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1600()V
    .locals 0

    .line 61
    invoke-static {}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->reestablishBridge()V

    return-void
.end method

.method static synthetic access$200()Landroid/content/ComponentName;
    .locals 1

    .line 61
    sget-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sCurrentServiceComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$202(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    .line 61
    sput-object p0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sCurrentServiceComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method static synthetic access$300()V
    .locals 0

    .line 61
    invoke-static {}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->disconnect()V

    return-void
.end method

.method static synthetic access$400(Landroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 0

    .line 61
    invoke-static {p0, p1}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->connect(Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500()Landroid/content/ServiceConnection;
    .locals 1

    .line 61
    sget-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$600(Z)V
    .locals 0

    .line 61
    invoke-static {p0}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->transferKeyguardVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$700()Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;
    .locals 1

    .line 61
    sget-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sRemoteEndpoint:Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;)Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;
    .locals 0

    .line 61
    sput-object p0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sRemoteEndpoint:Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;

    return-object p0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sActiveProtocolVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    sput-object p0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sActiveProtocolVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static connect(Landroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 4

    .line 335
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    .line 337
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 339
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 340
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 341
    new-instance p1, Lcom/sonymobile/runtimeskinning/SkinningBridge$6;

    invoke-direct {p1}, Lcom/sonymobile/runtimeskinning/SkinningBridge$6;-><init>()V

    sput-object p1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sConnection:Landroid/content/ServiceConnection;

    .line 467
    sget-object p1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sNavbarView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sConnection:Landroid/content/ServiceConnection;

    const/16 v2, 0x41

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    .line 469
    sput-object p0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sCurrentServiceComponent:Landroid/content/ComponentName;

    if-nez p1, :cond_1

    const/4 p0, 0x0

    .line 472
    sput-object p0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sConnection:Landroid/content/ServiceConnection;

    :cond_1
    return p1
.end method

.method private static disconnect()V
    .locals 3

    const/4 v0, 0x0

    .line 496
    invoke-static {v0, v0}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->setLockscreenClockAvailable(ZZ)V

    .line 497
    sget-object v1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sNavbarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 499
    invoke-static {v0}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->setStatusbarCloaked(Z)V

    .line 500
    sget-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sNavbarView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 501
    sput-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sRemoteEndpoint:Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;

    .line 502
    sput-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sConnection:Landroid/content/ServiceConnection;

    .line 503
    sput-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sCurrentServiceComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public static getLockScreenClockDimens()Landroid/util/Size;
    .locals 2

    .line 961
    sget-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 962
    :try_start_0
    sget-object v1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sClockPickerDimens:Landroid/util/Size;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 963
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getSettingsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1135
    sget v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sNavbarView:Landroid/view/View;

    .line 1136
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sUserId:I

    .line 1135
    invoke-static {v0, p0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static handleNavigationBarPositionChanged(II)V
    .locals 2

    if-eqz p0, :cond_0

    const-string p0, "right"

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "left"

    goto :goto_0

    :cond_1
    const-string p0, "bottom"

    .line 1031
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "positionChanged"

    const-string v1, "event"

    .line 1032
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gravity"

    .line 1033
    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    invoke-static {p1, v0}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->transferToRemote(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/view/View;IIIIIIII)V
    .locals 2

    .line 525
    sget-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sNavbarView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 529
    sget-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sButtonMappings:Landroid/util/SparseArray;

    const-string v1, "back"

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 530
    sget-object p1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sButtonMappings:Landroid/util/SparseArray;

    const-string v0, "home"

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 531
    sget-object p1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sButtonMappings:Landroid/util/SparseArray;

    invoke-virtual {p1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 532
    sget-object p1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sButtonMappings:Landroid/util/SparseArray;

    const-string p2, "recent"

    invoke-virtual {p1, p4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 533
    sget-object p1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sButtonMappings:Landroid/util/SparseArray;

    const-string p2, "menu"

    invoke-virtual {p1, p5, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 534
    sget-object p1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sButtonMappings:Landroid/util/SparseArray;

    const-string p2, "imeSwitch"

    invoke-virtual {p1, p6, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 535
    sget-object p1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sButtonMappings:Landroid/util/SparseArray;

    const-string p2, "accessibility"

    invoke-virtual {p1, p7, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 536
    sget-object p1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sButtonMappings:Landroid/util/SparseArray;

    const-string p2, "rotateSuggestion"

    invoke-virtual {p1, p8, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 537
    sput-object p0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sNavbarView:Landroid/view/View;

    .line 538
    sget-object p1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sNavbarView:Landroid/view/View;

    sget-object p2, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 540
    new-instance p6, Landroid/content/IntentFilter;

    invoke-direct {p6}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "com.sonymobile.runtimeskinning.intent.action.ENABLE_BRIDGE"

    .line 541
    invoke-virtual {p6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "com.sonymobile.runtimeskinning.intent.action.DISABLE_BRIDGE"

    .line 542
    invoke-virtual {p6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 543
    sget-object p1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sNavbarView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object p4, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sSkinnableReceiver:Landroid/content/BroadcastReceiver;

    sget-object p5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 p8, 0x0

    const-string p7, "com.sonymobile.runtimeskinning.permission.MANAGE_BRIDGE_STATE"

    invoke-virtual/range {p3 .. p8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 546
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$array;->themeable_analog_clock_plugin_factory:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aget-object p1, p1, p2

    sput-object p1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sThemeableClockFactoryClass:Ljava/lang/String;

    .line 549
    sget-object p1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sNavbarView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    sget-object p2, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 550
    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 552
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->somc_themeable_analog_clock_max_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 554
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/systemui/R$dimen;->somc_themeable_analog_clock_max_height:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    .line 556
    new-instance p2, Landroid/util/Size;

    invoke-direct {p2, p1, p0}, Landroid/util/Size;-><init>(II)V

    sput-object p2, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sDefaultClockPickerDimens:Landroid/util/Size;

    .line 557
    invoke-static {p1, p0}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->setPreferredLockScreenClockDimens(II)V

    return-void

    .line 526
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "init() may only be called once"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$onUserSwitched$1()V
    .locals 1

    const/4 v0, 0x0

    .line 646
    invoke-static {v0, v0}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->setLockscreenClockAvailable(ZZ)V

    return-void
.end method

.method static synthetic lambda$setStatusbarCloaked$2(Z)V
    .locals 2

    .line 1075
    sget-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 1077
    :try_start_0
    sget-object p0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sStatusBarView:Landroid/view/View;

    const v1, 0x106000d

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1079
    :cond_0
    sget-object p0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sStatusBarView:Landroid/view/View;

    sget-object v1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string p0, "auto"

    .line 1080
    sput-object p0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sStatusBarBackgroundColor:Ljava/lang/String;

    .line 1083
    :goto_0
    sget-object p0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sLightBarControllerRefresher:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    .line 1084
    sget-object p0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sLightBarControllerRefresher:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 1086
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic lambda$static$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 257
    sget-object p1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sLocationBuffer:[I

    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 258
    sget-object p0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sLocationBuffer:[I

    const/4 p1, 0x0

    aget p1, p0, p1

    const/4 p2, 0x1

    aget p0, p0, p2

    invoke-static {p1, p0}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->handleNavigationBarPositionChanged(II)V

    return-void
.end method

.method public static massageLightBarMode(ZI)Z
    .locals 5

    const/16 v0, 0x2000

    if-ne p1, v0, :cond_6

    .line 869
    sget-object p1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sStatusBarBackgroundColor:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x2dddaf

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x2eef76

    if-eq v1, v2, :cond_1

    const v2, 0x6233516

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "light"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v4

    goto :goto_0

    :cond_1
    const-string v1, "dark"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v3

    goto :goto_0

    :cond_2
    const-string v1, "auto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_4

    return p0

    :cond_4
    return v4

    :cond_5
    return v3

    :cond_6
    return p0
.end method

.method public static massageSystemUiVisibility(I)I
    .locals 2

    and-int/lit16 v0, p0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "baseApp"

    goto :goto_1

    :cond_1
    const-string v0, "unknown"

    .line 898
    :goto_1
    invoke-static {v0}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->transferFocusedWindowTypeChanged(Ljava/lang/String;)V

    and-int/lit16 p0, p0, -0x4001

    return p0
.end method

.method public static onButtonClicked(I)V
    .locals 3

    .line 769
    sget-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sButtonMappings:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 771
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "event"

    const-string v2, "buttonClicked"

    .line 772
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "button"

    .line 773
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 775
    invoke-static {v0, p0}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->transferToRemote(Ljava/util/Map;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onButtonStateChanged(ILjava/lang/String;)V
    .locals 3

    .line 751
    sget-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sButtonMappings:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 753
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "event"

    const-string v2, "buttonStateChanged"

    .line 754
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "button"

    .line 755
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "state"

    .line 756
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buttonStateChanged:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->transferToRemote(Ljava/util/Map;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onButtonVariantChanged(ILjava/lang/String;)V
    .locals 3

    .line 707
    sget-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sButtonMappings:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 709
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "event"

    const-string v2, "buttonVariantChanged"

    .line 710
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "button"

    .line 711
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "variant"

    .line 712
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "rotateSuggestion"

    .line 716
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 717
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buttonVariantChanged:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 718
    :goto_0
    invoke-static {v0, p0}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->transferToRemote(Ljava/util/Map;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static onButtonVisibilityChanged(ILjava/lang/String;)V
    .locals 3

    .line 732
    sget-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sButtonMappings:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 734
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "event"

    const-string v2, "buttonVisibilityChanged"

    .line 735
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "button"

    .line 736
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "visible"

    .line 737
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buttonVisibilityChanged:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->transferToRemote(Ljava/util/Map;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onDockedStackVisibilityChanged(Z)V
    .locals 3

    .line 819
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "splitScreenChanged"

    const-string v2, "event"

    .line 820
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v2, "split"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    invoke-static {v0, v1}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->transferToRemote(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static onLightBarControllerCreated(Ljava/lang/Runnable;)V
    .locals 0

    .line 582
    sput-object p0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sLightBarControllerRefresher:Ljava/lang/Runnable;

    return-void
.end method

.method public static onNavigationBarModeChanged(IZ)V
    .locals 3

    .line 688
    sget-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->BAR_TRANSITIONS_TO_NAME:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 690
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "navigationBarModeChanged"

    const-string v2, "event"

    .line 691
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mode"

    .line 692
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string p0, "light"

    goto :goto_0

    :cond_0
    const-string p0, "dark"

    :goto_0
    const-string p1, "color"

    .line 693
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    invoke-static {v0, v1}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->transferToRemote(Ljava/util/Map;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static onNavigationBarVisibilityChanged(Z)V
    .locals 3

    .line 787
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "navigationBarVisibilityChanged"

    const-string v2, "event"

    .line 788
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v2, "visible"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    invoke-static {v0, v1}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->transferToRemote(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static onStatusBarCreated(Landroid/view/View;)V
    .locals 1

    .line 567
    sget-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 568
    :try_start_0
    sput-object p0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sStatusBarView:Landroid/view/View;

    .line 570
    sget-object p0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sStatusBarView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sput-object p0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 571
    sget-boolean p0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sIsStatusBarCloaked:Z

    invoke-static {p0}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->setStatusbarCloaked(Z)V

    .line 572
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static onStatusBarModeChanged(IZ)V
    .locals 3

    .line 670
    sget-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->BAR_TRANSITIONS_TO_NAME:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 672
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "statusBarModeChanged"

    const-string v2, "event"

    .line 673
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mode"

    .line 674
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string p0, "light"

    goto :goto_0

    :cond_0
    const-string p0, "dark"

    :goto_0
    const-string p1, "color"

    .line 675
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    invoke-static {v0, v1}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->transferToRemote(Ljava/util/Map;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static onSurfaceAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 4

    .line 913
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "surfaceAvailable"

    const-string v2, "event"

    .line 914
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "id"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const-string p0, "surface"

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    invoke-static {v0, v1}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->transferToRemote(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static onSurfaceChanged(Landroid/graphics/SurfaceTexture;Ljava/lang/String;IIII)V
    .locals 3

    .line 933
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "surfaceChanged"

    const-string v2, "event"

    .line 934
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "id"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "place"

    .line 936
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string p1, "region"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    invoke-static {v0, v1}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->transferToRemote(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .line 948
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "surfaceDestroyed"

    const-string v2, "event"

    .line 949
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "id"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    invoke-static {v0, v1}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->transferToRemote(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static onSystemUiVisibilityChanged(I)V
    .locals 4

    and-int/lit8 v0, p0, 0x2

    const-string v1, "shown"

    const-string v2, "hidden"

    const-string v3, "hiding"

    if-nez v0, :cond_0

    .line 800
    sget-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sLastNavBarWindowState:Ljava/lang/String;

    .line 801
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sLastNavBarWindowState:Ljava/lang/String;

    .line 802
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 803
    invoke-static {v1}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->transferNavigationBarWindowStateChanged(Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_1

    .line 805
    sget-object p0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sLastStatusBarWindowState:Ljava/lang/String;

    .line 806
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sLastStatusBarWindowState:Ljava/lang/String;

    .line 807
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 808
    invoke-static {v1}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->transferStatusBarWindowStateChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static onUserSwitched(Landroid/content/Context;I)V
    .locals 2

    .line 644
    sget v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sUserId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sNavbarView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 646
    sget-object v1, Lcom/sonymobile/runtimeskinning/-$$Lambda$SkinningBridge$0FP5F4MjcqamRew3m1532UGeXfs;->INSTANCE:Lcom/sonymobile/runtimeskinning/-$$Lambda$SkinningBridge$0FP5F4MjcqamRew3m1532UGeXfs;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 648
    invoke-static {v0, v0}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->setLockscreenClockAvailable(ZZ)V

    .line 653
    :goto_0
    sput p1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sUserId:I

    .line 655
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.sonymobile.runtimeskinning.intent.action.USER_SWITCHED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 656
    sget-object p0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sConnection:Landroid/content/ServiceConnection;

    if-eqz p0, :cond_1

    .line 658
    invoke-static {}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->disconnect()V

    :cond_1
    return-void
.end method

.method public static onWindowStateChanged(II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 845
    :cond_0
    sget-object p0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->WINDOW_STATE_TO_NAME:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 846
    sget-object p1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sNavbarView:Landroid/view/View;

    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    .line 847
    invoke-static {p0}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->transferNavigationBarWindowStateChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 839
    :cond_1
    sget-object p0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->WINDOW_STATE_TO_NAME:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 840
    sget-object p1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sStatusBarView:Landroid/view/View;

    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    .line 841
    invoke-static {p0}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->transferStatusBarWindowStateChanged(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static reestablishBridge()V
    .locals 3

    .line 482
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.runtimeskinning.intent.action.REINIT_BRIDGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 483
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 484
    sget-object v1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sNavbarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->skinning_bridge_endpoint:I

    .line 485
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 486
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    sget-object v1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sNavbarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sonymobile.runtimeskinning.permission.RECEIVE_REINIT_BRIDGE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private static sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/high16 v0, 0x10000000

    .line 595
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 596
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$array;->skinning_bridge_intent_receivers:I

    .line 597
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 598
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 599
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 603
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 608
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x100000

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 610
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    new-instance v3, Landroid/os/UserHandle;

    sget v4, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "com.sonymobile.runtimeskinning.permission.RECEIVE_FORWARDED_INTENTS"

    invoke-virtual {p0, p1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static setLockscreenClockAvailable(ZZ)V
    .locals 3

    .line 1103
    sget v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_1

    .line 1104
    sget-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sNavbarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1105
    sget v1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sUserId:I

    const-string v2, "com.sonymobile.runtimeskinning.lockscreen.clock.available"

    .line 1104
    invoke-static {v0, v2, p0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v0, "somc.lockscreen.active.clock_factory"

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1108
    sget-object p0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sNavbarView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sThemeableClockFactoryClass:Ljava/lang/String;

    sget v1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sUserId:I

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    .line 1113
    invoke-static {v0}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->getSettingsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1114
    sget-object p1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sThemeableClockFactoryClass:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1117
    sget-object p1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sNavbarView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x0

    sget v2, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sUserId:I

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1119
    sget-object p1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sNavbarView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget v1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sUserId:I

    invoke-static {p1, v0, p0, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static setPreferredLockScreenClockDimens(II)V
    .locals 2

    .line 1147
    sget-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1148
    :try_start_0
    new-instance v1, Landroid/util/Size;

    if-gtz p0, :cond_0

    .line 1149
    sget-object p0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sDefaultClockPickerDimens:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    :cond_0
    if-gtz p1, :cond_1

    .line 1150
    sget-object p1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sDefaultClockPickerDimens:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    :cond_1
    invoke-direct {v1, p0, p1}, Landroid/util/Size;-><init>(II)V

    sput-object v1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sClockPickerDimens:Landroid/util/Size;

    .line 1151
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static setStatusbarCloaked(Z)V
    .locals 3

    .line 1071
    sget-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1072
    :try_start_0
    sput-boolean p0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sIsStatusBarCloaked:Z

    .line 1073
    sget-object v1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sStatusBarView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1074
    sget-object v1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sStatusBarView:Landroid/view/View;

    new-instance v2, Lcom/sonymobile/runtimeskinning/-$$Lambda$SkinningBridge$SrdZjh6bHkUZO_Qv-zP4Oulmk4U;

    invoke-direct {v2, p0}, Lcom/sonymobile/runtimeskinning/-$$Lambda$SkinningBridge$SrdZjh6bHkUZO_Qv-zP4Oulmk4U;-><init>(Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1089
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static transferFocusedWindowTypeChanged(Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 1015
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "focusedWindowTypeChanged"

    const-string v2, "event"

    .line 1016
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    .line 1017
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    invoke-static {v0, v1}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->transferToRemote(Ljava/util/Map;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static transferKeyguardVisibilityChanged(Z)V
    .locals 3

    .line 973
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "keyguardVisibilityChanged"

    const-string v2, "event"

    .line 974
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v2, "visible"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    invoke-static {v0, v1}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->transferToRemote(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private static transferNavigationBarWindowStateChanged(Ljava/lang/String;)V
    .locals 3

    .line 1000
    sput-object p0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sLastNavBarWindowState:Ljava/lang/String;

    .line 1001
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "navigationBarWindowStateChanged"

    const-string v2, "event"

    .line 1002
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "state"

    .line 1003
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    invoke-static {v0, v1}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->transferToRemote(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private static transferStatusBarWindowStateChanged(Ljava/lang/String;)V
    .locals 3

    .line 986
    sput-object p0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sLastStatusBarWindowState:Ljava/lang/String;

    .line 987
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "statusBarWindowStateChanged"

    const-string v2, "event"

    .line 988
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "state"

    .line 989
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    invoke-static {v0, v1}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->transferToRemote(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private static transferToRemote(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1049
    sget-object v0, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sTransferHistory:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1050
    sget-object v1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sTransferHistory:Ljava/util/Map;

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1053
    :goto_0
    sget-object p1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sRemoteEndpoint:Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;

    if-eqz p1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 1058
    :cond_1
    :try_start_0
    sget-object p1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->sRemoteEndpoint:Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;

    invoke-interface {p1, p0}, Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;->transfer(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 1060
    sget-object p1, Lcom/sonymobile/runtimeskinning/SkinningBridge;->TAG:Ljava/lang/String;

    const-string v0, "Could not transfer data to skinning bridge endpoint application"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method
