.class public Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;
.super Ljava/lang/Object;
.source "LockscreenSkinningController.java"

# interfaces
.implements Lcom/android/systemui/ConfigurationChangedReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController$AsyncTaskResourcesLoader;,
        Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController$ThemeChangedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LockscreenSkinningController"


# instance fields
.field private final mConfiguration:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private mIsSkinningEnabled:Z

.field private mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mReceiver:Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController$ThemeChangedReceiver;

.field private mResources:Landroid/content/res/Resources;

.field private mScrimColor:I

.field private mStatusBarWindow:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mScrimColor:I

    .line 61
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mConfiguration:Landroid/content/res/Configuration;

    .line 70
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$bool;->somc_keyguard_theme_enabled:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mIsSkinningEnabled:Z

    .line 72
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->getSkinnedResourcesAsync(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;Landroid/content/res/Resources;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->updateSkinnedResources(Landroid/content/res/Resources;)V

    return-void
.end method

.method private getScrimColor(Landroid/content/res/Resources;)I
    .locals 1

    .line 164
    sget p0, Lcom/android/systemui/R$color;->somc_keyguard_theme_color_scrim:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0
.end method

.method private getSkinnedResourcesAsync(Landroid/content/Context;)V
    .locals 1

    .line 138
    new-instance v0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController$AsyncTaskResourcesLoader;

    invoke-direct {v0, p1, p0}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController$AsyncTaskResourcesLoader;-><init>(Landroid/content/Context;Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 139
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private initReceiverForCurrentUser(Landroid/content/Context;)V
    .locals 8

    .line 109
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mReceiver:Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController$ThemeChangedReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 111
    iput-object v1, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mReceiver:Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController$ThemeChangedReceiver;

    .line 113
    :cond_0
    new-instance v0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController$ThemeChangedReceiver;

    invoke-direct {v0, v1}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController$ThemeChangedReceiver;-><init>(Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController$1;)V

    .line 114
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sonymobile.runtimeskinning.intent.SKIN_CHANGED"

    .line 115
    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const-string v6, "com.sonymobile.runtimeskinning.permission.SEND_SKIN_CHANGED"

    move-object v2, p1

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 118
    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mReceiver:Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController$ThemeChangedReceiver;

    return-void
.end method

.method private updateColorExtractor()V
    .locals 2

    .line 168
    new-instance v0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-direct {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;-><init>()V

    .line 169
    iget v1, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mScrimColor:I

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    .line 170
    iget p0, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mScrimColor:I

    invoke-virtual {v0, p0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    const/4 p0, 0x0

    .line 171
    invoke-virtual {v0, p0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    .line 172
    const-class p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {p0, v0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->setSomcLockColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    return-void
.end method

.method private updateSkinnedResources(Landroid/content/res/Resources;)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mResources:Landroid/content/res/Resources;

    .line 151
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mStatusBarWindow:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mResources:Landroid/content/res/Resources;

    invoke-static {p1, v0, v1}, Lcom/sonymobile/systemui/lockscreen/theme/SomcLockscreenRuntimeThemeUpdater;->newThemeConfiguration(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/KeyguardIndicationController;Landroid/content/res/Resources;)V

    .line 153
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->getScrimColor(Landroid/content/res/Resources;)I

    move-result p1

    .line 154
    iget v0, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mScrimColor:I

    if-eq p1, v0, :cond_1

    .line 155
    iput p1, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mScrimColor:I

    .line 156
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->updateColorExtractor()V

    .line 160
    :cond_1
    const-class p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    invoke-virtual {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->onThemeChanged()V

    return-void
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mIsSkinningEnabled:Z

    if-eqz v0, :cond_0

    .line 182
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mResources:Landroid/content/res/Resources;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mIsSkinningEnabled:Z

    if-eqz v0, :cond_0

    .line 84
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mStatusBarWindow:Landroid/view/ViewGroup;

    .line 85
    iput-object p2, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 86
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->initReceiverForCurrentUser(Landroid/content/Context;)V

    .line 87
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->getSkinnedResourcesAsync(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    .line 240
    iget-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mIsSkinningEnabled:Z

    if-eqz v0, :cond_0

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    .line 241
    const-class p1, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->getSkinnedResourcesAsync(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final onUserSwitched(I)V
    .locals 0

    .line 97
    iget-boolean p1, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mIsSkinningEnabled:Z

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->initReceiverForCurrentUser(Landroid/content/Context;)V

    .line 99
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->getSkinnedResourcesAsync(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
