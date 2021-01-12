.class public Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;
.super Ljava/lang/Object;
.source "LockscreenAssistIconController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;,
        Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LockscreenAssistIconController"

.field private static sIsReadyForShowAssistIcon:Z


# instance fields
.field private mAssistIconDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private mAssistIconView:Landroid/widget/ImageView;

.field private mAssistLaunchIntent:Landroid/app/PendingIntent;

.field private mAssistVersionName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mIsAlreadyTap:Z

.field private mIsAssistShowing:Z

.field private mIsDoze:Z

.field private mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mLockscreenLoopsController:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResId:I

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mShowAssistIconRunnable:Ljava/lang/Runnable;

.field private mShowCount:J

.field private mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;)V
    .locals 2

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mIsAlreadyTap:Z

    .line 76
    iput-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mIsDoze:Z

    .line 78
    iput-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mIsAssistShowing:Z

    .line 80
    iput v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mResId:I

    const-string v0, ""

    .line 82
    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistVersionName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 84
    iput-wide v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mShowCount:J

    .line 90
    new-instance v0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$1;-><init>(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 136
    new-instance v0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$2;-><init>(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mShowAssistIconRunnable:Ljava/lang/Runnable;

    .line 146
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mContext:Landroid/content/Context;

    .line 147
    iput-object p2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mLockscreenLoopsController:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    .line 148
    sget p2, Lcom/android/systemui/R$anim;->somc_keyguard_assist_icon_show:I

    .line 149
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mShowAnimation:Landroid/view/animation/Animation;

    .line 150
    sget p2, Lcom/android/systemui/R$anim;->somc_keyguard_assist_icon_hide:I

    .line 151
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mHideAnimation:Landroid/view/animation/Animation;

    .line 153
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->initReceiverForCurrentUser()V

    .line 154
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->hideAssistIcon(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mResId:I

    return p0
.end method

.method static synthetic access$1002(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mResId:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;I)Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->getIcon(I)Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistVersionName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistVersionName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)Z
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->isLockscreenVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mShowCount:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;J)J
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mShowCount:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mIsAlreadyTap:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mIsAlreadyTap:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->startConversationalUi()V

    return-void
.end method

.method static synthetic access$202(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistLaunchIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->readyForShowAssistIcon()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->initReceiverForCurrentUser()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->showAssistIcon()V

    return-void
.end method

.method static synthetic access$800(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->requestAssistEmphasis(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)Landroid/widget/ImageView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private getIcon(I)Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 4

    const-string v0, "com.sonymobile.assist"

    .line 260
    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 266
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 264
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 268
    :try_start_1
    invoke-virtual {v3, p1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 271
    :try_start_2
    sget-object v3, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    .line 275
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 274
    invoke-virtual {v1, v0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 276
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistVersionName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 278
    sget-object p1, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v2
.end method

.method private hideAssistIcon(Z)V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mIsAssistShowing:Z

    .line 227
    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mHideAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$4;

    invoke-direct {v2, p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$4;-><init>(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    if-eqz p1, :cond_1

    .line 241
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 243
    :cond_1
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    :goto_0
    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->requestAssistEmphasis(Z)V

    return-void
.end method

.method private initReceiverForCurrentUser()V
    .locals 8

    .line 158
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->config_somcAssistIconSupport:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 162
    iget-object v2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 163
    iput-object v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 165
    :cond_1
    new-instance v0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconReceiver;-><init>(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$1;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 166
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.sonymobile.keyguard.assist.action.SHOW_ICON"

    .line 167
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.sonymobile.keyguard.assist.action.HIDE_ICON"

    .line 168
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v7, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mHandler:Landroid/os/Handler;

    const-string v6, "com.sonymobile.keyguard.assist.permission.CONTROL_ICON"

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private isLockscreenVisible()Z
    .locals 1

    .line 191
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    .line 192
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isReadyForShowAssistIcon()Z
    .locals 1

    .line 176
    sget-boolean v0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->sIsReadyForShowAssistIcon:Z

    return v0
.end method

.method private readyForShowAssistIcon()V
    .locals 3

    .line 180
    iget-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mIsAssistShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->isLockscreenVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mShowAssistIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mShowAssistIconRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    .line 186
    sput-boolean p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->sIsReadyForShowAssistIcon:Z

    :cond_0
    return-void
.end method

.method private requestAssistEmphasis(Z)V
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 251
    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 252
    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v6, v1

    .line 253
    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v7, v1

    const/4 v1, 0x0

    .line 254
    aget v1, v0, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v6, v2

    add-float v4, v1, v3

    const/4 v1, 0x1

    .line 255
    aget v0, v0, v1

    int-to-float v0, v0

    div-float v1, v7, v2

    add-float v5, v0, v1

    .line 256
    iget-object v2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mLockscreenLoopsController:Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    move v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;->requestAssistEmphasis(ZFFFF)V

    return-void
.end method

.method private showAssistIcon()V
    .locals 6

    .line 196
    iget-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mIsDoze:Z

    if-eqz v0, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->isLockscreenVisible()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mIsAssistShowing:Z

    .line 204
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mShowAssistIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 205
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->updateThemeColors()V

    .line 206
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->clearAnimationCallbacks()V

    .line 208
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    new-instance v2, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$3;

    invoke-direct {v2, p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$3;-><init>(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 215
    iget-wide v2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mShowCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mShowCount:J

    .line 216
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 217
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 219
    sput-boolean v1, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->sIsReadyForShowAssistIcon:Z

    return-void

    .line 200
    :cond_2
    :goto_0
    sput-boolean v1, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->sIsReadyForShowAssistIcon:Z

    return-void
.end method

.method private startConversationalUi()V
    .locals 1

    .line 358
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistLaunchIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_0

    .line 360
    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 362
    sget-object v0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/PendingIntent$CanceledException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private updateThemeColors()V
    .locals 3

    .line 284
    iget-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mIsDoze:Z

    if-nez v0, :cond_1

    .line 286
    const-class v0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    .line 287
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    sget v1, Lcom/android/systemui/R$color;->somc_keyguard_theme_color_solid_foreground:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    goto :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    .line 293
    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 295
    :goto_0
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setTint(I)V

    goto :goto_1

    .line 297
    :cond_1
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setTint(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public init(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 1

    .line 335
    sget v0, Lcom/android/systemui/R$id;->assist_icon:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconView:Landroid/widget/ImageView;

    .line 336
    iput-object p2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 337
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconView:Landroid/widget/ImageView;

    new-instance p2, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;-><init>(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$1;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onThemeChanged(Landroid/view/ViewGroup;)V
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconView:Landroid/widget/ImageView;

    .line 347
    sget v1, Lcom/android/systemui/R$id;->assist_icon:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconView:Landroid/widget/ImageView;

    .line 348
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconView:Landroid/widget/ImageView;

    new-instance v1, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$AssistIconClickListener;-><init>(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$1;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 353
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setAssistIconView(Landroid/widget/ImageView;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconView:Landroid/widget/ImageView;

    return-void
.end method

.method public setDoze(Z)V
    .locals 0

    .line 302
    iput-boolean p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mIsDoze:Z

    .line 303
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->mAssistIconDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p1, :cond_0

    .line 304
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->updateThemeColors()V

    :cond_0
    return-void
.end method
