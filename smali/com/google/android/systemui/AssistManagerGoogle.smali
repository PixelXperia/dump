.class public Lcom/google/android/systemui/AssistManagerGoogle;
.super Lcom/android/systemui/assist/AssistManager;
.source "AssistManagerGoogle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/AssistManagerGoogle$AssistantSettingsObserver;
    }
.end annotation


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mEnableReceiver:Lcom/google/android/systemui/AssistantStateReceiver;

.field private final mOpaEnableDispatcher:Lcom/google/android/systemui/OpaEnableDispatcher;

.field private final mUserSwitchCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/assist/AssistManager;-><init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;)V

    .line 23
    new-instance p1, Lcom/google/android/systemui/AssistManagerGoogle$AssistantSettingsObserver;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/AssistManagerGoogle$AssistantSettingsObserver;-><init>(Lcom/google/android/systemui/AssistManagerGoogle;)V

    iput-object p1, p0, Lcom/google/android/systemui/AssistManagerGoogle;->mContentObserver:Landroid/database/ContentObserver;

    .line 25
    new-instance p1, Lcom/google/android/systemui/AssistantStateReceiver;

    invoke-direct {p1}, Lcom/google/android/systemui/AssistantStateReceiver;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/AssistManagerGoogle;->mEnableReceiver:Lcom/google/android/systemui/AssistantStateReceiver;

    .line 27
    new-instance p1, Lcom/google/android/systemui/AssistManagerGoogle$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/AssistManagerGoogle$1;-><init>(Lcom/google/android/systemui/AssistManagerGoogle;)V

    iput-object p1, p0, Lcom/google/android/systemui/AssistManagerGoogle;->mUserSwitchCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 43
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/AssistManagerGoogle;->mContentResolver:Landroid/content/ContentResolver;

    .line 44
    new-instance p1, Lcom/google/android/systemui/OpaEnableDispatcher;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-direct {p1, p2, v0}, Lcom/google/android/systemui/OpaEnableDispatcher;-><init>(Landroid/content/Context;Lcom/android/internal/app/AssistUtils;)V

    iput-object p1, p0, Lcom/google/android/systemui/AssistManagerGoogle;->mOpaEnableDispatcher:Lcom/google/android/systemui/OpaEnableDispatcher;

    .line 45
    iget-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/systemui/AssistManagerGoogle;->mUserSwitchCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 47
    invoke-direct {p0}, Lcom/google/android/systemui/AssistManagerGoogle;->registerSettingsObserver()V

    const/4 p1, -0x2

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/systemui/AssistManagerGoogle;->registerEnableReceiver(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/AssistManagerGoogle;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/android/systemui/AssistManagerGoogle;->updateAssistantEnabledState()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/systemui/AssistManagerGoogle;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/android/systemui/AssistManagerGoogle;->unregisterSettingsObserver()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/systemui/AssistManagerGoogle;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/android/systemui/AssistManagerGoogle;->registerSettingsObserver()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/systemui/AssistManagerGoogle;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/android/systemui/AssistManagerGoogle;->unregisterEnableReceiver()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/systemui/AssistManagerGoogle;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/systemui/AssistManagerGoogle;->registerEnableReceiver(I)V

    return-void
.end method

.method private registerEnableReceiver(I)V
    .locals 6

    .line 60
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/systemui/AssistManagerGoogle;->mEnableReceiver:Lcom/google/android/systemui/AssistantStateReceiver;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string p0, "com.google.android.systemui.OPA_ENABLED"

    invoke-direct {v3, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private registerSettingsObserver()V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/google/android/systemui/AssistManagerGoogle;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "assistant"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/systemui/AssistManagerGoogle;->mContentObserver:Landroid/database/ContentObserver;

    .line 85
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x0

    .line 83
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private unregisterEnableReceiver()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/systemui/AssistManagerGoogle;->mEnableReceiver:Lcom/google/android/systemui/AssistantStateReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unregisterSettingsObserver()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/google/android/systemui/AssistManagerGoogle;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/google/android/systemui/AssistManagerGoogle;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateAssistantEnabledState()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/android/systemui/AssistManagerGoogle;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/google/android/systemui/UserSettingsUtils;->load(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 76
    iget-object p0, p0, Lcom/google/android/systemui/AssistManagerGoogle;->mOpaEnableDispatcher:Lcom/google/android/systemui/OpaEnableDispatcher;

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaEnableDispatcher;->dispatchOpaEnabled(Z)V

    return-void
.end method


# virtual methods
.method public shouldShowOrb()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
