.class public Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;
.super Ljava/lang/Object;
.source "LockscreenClockController.java"

# interfaces
.implements Lcom/sonymobile/keyguard/clock/picker/ClockPickerStarter;
.implements Lcom/android/systemui/ConfigurationChangedReceiver;


# instance fields
.field private mClockPickerController:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mKeyguardStatusView:Landroid/view/ViewGroup;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController$1;-><init>(Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 53
    new-instance v0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController$2;-><init>(Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 80
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->mContext:Landroid/content/Context;

    .line 81
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->mCurrentUserId:I

    .line 82
    const-class p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 83
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method static synthetic access$002(Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->mCurrentUserId:I

    return p1
.end method

.method private initClockController()V
    .locals 7

    .line 102
    new-instance v4, Lcom/sonymobile/keyguard/plugininfrastructure/RealDefaultKeyguardFactoryProvider;

    new-instance v0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/sonymobile/keyguard/plugininfrastructure/RealCustomizationResourceLoader;

    iget-object v2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonymobile/keyguard/plugininfrastructure/RealCustomizationResourceLoader;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, v0, v1}, Lcom/sonymobile/keyguard/plugininfrastructure/RealDefaultKeyguardFactoryProvider;-><init>(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;Lcom/sonymobile/keyguard/plugininfrastructure/CustomizationResourceLoader;)V

    .line 106
    new-instance v0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;

    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->mContext:Landroid/content/Context;

    .line 107
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->mCurrentUserId:I

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;-><init>(Landroid/content/ContentResolver;I)V

    .line 110
    new-instance v2, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;-><init>(Landroid/content/Context;)V

    .line 113
    new-instance v5, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;

    invoke-direct {v5, v2, v0, v4}, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;-><init>(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;)V

    .line 117
    new-instance v3, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0, v4, v5}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;-><init>(Landroid/content/Context;Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;)V

    .line 121
    new-instance v6, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->mContext:Landroid/content/Context;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;-><init>(Landroid/content/Context;Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;)V

    iput-object v6, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->mClockPickerController:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    return-void
.end method


# virtual methods
.method public final clearClockPickerView()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->mClockPickerController:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->exitClockPicker()V

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->mClockPickerController:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    :cond_0
    return-void
.end method

.method public final displayClockPluginPicker()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->mClockPickerController:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    if-nez v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->initClockController()V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->mClockPickerController:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->mKeyguardStatusView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->startClockPicker(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public final exitClockPicker()V
    .locals 2

    .line 141
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->mClockPickerController:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 142
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->exitClockPicker(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;Z)V

    :cond_0
    return-void
.end method

.method public final initClockPickerStarter(Landroid/view/ViewGroup;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->mKeyguardStatusView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 94
    iput-object v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->mKeyguardStatusView:Landroid/view/ViewGroup;

    .line 97
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->mKeyguardStatusView:Landroid/view/ViewGroup;

    .line 98
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->mKeyguardStatusView:Landroid/view/ViewGroup;

    new-instance v0, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;

    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sonymobile/keyguard/clock/picker/StartClockPickerTouchListener;-><init>(Landroid/content/Context;Lcom/sonymobile/keyguard/clock/picker/ClockPickerStarter;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 156
    invoke-virtual {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->clearClockPickerView()V

    return-void
.end method
