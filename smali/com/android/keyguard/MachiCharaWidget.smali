.class public Lcom/android/keyguard/MachiCharaWidget;
.super Landroid/widget/LinearLayout;
.source "MachiCharaWidget.java"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mHandler:Landroid/os/Handler;

.field private mIsDoze:Z

.field private mRemoteViews:Landroid/widget/RemoteViews;

.field private mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field public mUpdateViewFlg:Z

.field mUserHandle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 47
    iput-boolean p2, p0, Lcom/android/keyguard/MachiCharaWidget;->mUpdateViewFlg:Z

    .line 49
    iput-boolean p2, p0, Lcom/android/keyguard/MachiCharaWidget;->mIsDoze:Z

    const/4 p2, 0x0

    .line 54
    iput-object p2, p0, Lcom/android/keyguard/MachiCharaWidget;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    iput-object p2, p0, Lcom/android/keyguard/MachiCharaWidget;->mActivityManager:Landroid/app/ActivityManager;

    .line 71
    iput-object p1, p0, Lcom/android/keyguard/MachiCharaWidget;->mContext:Landroid/content/Context;

    .line 72
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/MachiCharaWidget;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/MachiCharaWidget;)Landroid/widget/RemoteViews;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/keyguard/MachiCharaWidget;->mRemoteViews:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/keyguard/MachiCharaWidget;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/keyguard/MachiCharaWidget;->mRemoteViews:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/MachiCharaWidget;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/keyguard/MachiCharaWidget;->updateView()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/MachiCharaWidget;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/keyguard/MachiCharaWidget;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private registerReceiver()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/keyguard/MachiCharaWidget;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/android/keyguard/MachiCharaWidget$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MachiCharaWidget$1;-><init>(Lcom/android/keyguard/MachiCharaWidget;)V

    iput-object v0, p0, Lcom/android/keyguard/MachiCharaWidget;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 181
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.nttdocomo.android.mascot.KEYGUARD_UPDATE"

    .line 182
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/android/keyguard/MachiCharaWidget;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/keyguard/MachiCharaWidget;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/MachiCharaWidget;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/MachiCharaWidget;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/MachiCharaWidget;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/android/keyguard/MachiCharaWidget;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterReceiver: exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DocomoLockScreen"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private updateCharaLayoutVisibility(I)V
    .locals 1

    .line 309
    iget-boolean v0, p0, Lcom/android/keyguard/MachiCharaWidget;->mIsDoze:Z

    if-eqz v0, :cond_0

    const/16 p1, 0x8

    .line 311
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateView()V
    .locals 8

    .line 102
    sget v0, Lcom/android/systemui/R$id;->chara:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 107
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_1
    const/4 v1, 0x0

    .line 112
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_2

    .line 114
    sget v1, Lcom/android/systemui/R$id;->mic_button:I

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    :cond_2
    if-nez v1, :cond_3

    return-void

    .line 120
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/MachiCharaWidget;->mRemoteViews:Landroid/widget/RemoteViews;

    const-string v3, "DocomoLockScreen"

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    .line 123
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v2, v7, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 124
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/keyguard/MachiCharaWidget;->isShowMachiChara()Z

    move-result v0

    if-nez v0, :cond_4

    .line 127
    iput-boolean v6, p0, Lcom/android/keyguard/MachiCharaWidget;->mUpdateViewFlg:Z

    .line 128
    invoke-direct {p0, v5}, Lcom/android/keyguard/MachiCharaWidget;->updateCharaLayoutVisibility(I)V

    .line 129
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 132
    :cond_4
    iput-boolean v6, p0, Lcom/android/keyguard/MachiCharaWidget;->mUpdateViewFlg:Z

    .line 133
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    invoke-direct {p0, v4}, Lcom/android/keyguard/MachiCharaWidget;->updateCharaLayoutVisibility(I)V

    .line 136
    :goto_0
    sget-boolean p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockLog;->DEBUG:Z

    if-eqz p0, :cond_6

    const-string p0, "MachiCharaWidget.updateView(): set remoteviews"

    .line 137
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 140
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 144
    :cond_5
    iput-boolean v6, p0, Lcom/android/keyguard/MachiCharaWidget;->mUpdateViewFlg:Z

    .line 145
    invoke-direct {p0, v5}, Lcom/android/keyguard/MachiCharaWidget;->updateCharaLayoutVisibility(I)V

    .line 146
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    sget-boolean p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockLog;->DEBUG:Z

    if-eqz p0, :cond_6

    const-string p0, "MachiCharaWidget.updateView(): remoteviews is null"

    .line 148
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public declared-synchronized getActivityManager()Landroid/app/ActivityManager;
    .locals 2

    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/MachiCharaWidget;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 291
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/keyguard/MachiCharaWidget;->mActivityManager:Landroid/app/ActivityManager;

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/MachiCharaWidget;->mActivityManager:Landroid/app/ActivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isLockscreenNotificationSetting()Z
    .locals 5

    .line 232
    iget-object v0, p0, Lcom/android/keyguard/MachiCharaWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/MachiCharaWidget;->mUserHandle:I

    const/4 v2, 0x1

    const-string v3, "lock_screen_show_notifications"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 236
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/MachiCharaWidget;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    iget p0, p0, Lcom/android/keyguard/MachiCharaWidget;->mUserHandle:I

    invoke-virtual {v3, v4, p0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public isLockscreenPublicMode(I)Z
    .locals 2

    .line 222
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/MachiCharaWidget;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 223
    iget-object p0, p0, Lcom/android/keyguard/MachiCharaWidget;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    sget-object p1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMascotAppRunning()Z
    .locals 2

    .line 277
    invoke-virtual {p0}, Lcom/android/keyguard/MachiCharaWidget;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 280
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 281
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v1, "com.nttdocomo.android.mascot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isShowMachiChara()Z
    .locals 2

    .line 207
    invoke-virtual {p0}, Lcom/android/keyguard/MachiCharaWidget;->getActivityManager()Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/MachiCharaWidget;->mUserHandle:I

    .line 208
    iget-object v0, p0, Lcom/android/keyguard/MachiCharaWidget;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/keyguard/MachiCharaWidget;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 212
    iget v0, p0, Lcom/android/keyguard/MachiCharaWidget;->mUserHandle:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/MachiCharaWidget;->isLockscreenPublicMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/android/keyguard/MachiCharaWidget;->isLockscreenNotificationSetting()Z

    move-result p0

    return p0

    .line 217
    :cond_0
    iget v0, p0, Lcom/android/keyguard/MachiCharaWidget;->mUserHandle:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/MachiCharaWidget;->isUsersAllowingPrivateNotifications(I)Z

    move-result p0

    return p0
.end method

.method public isUsersAllowingPrivateNotifications(I)Z
    .locals 5

    .line 250
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    return v1

    .line 256
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_4

    .line 257
    iget-object v2, p0, Lcom/android/keyguard/MachiCharaWidget;->mContext:Landroid/content/Context;

    .line 258
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "lock_screen_allow_private_notifications"

    .line 257
    invoke-static {v2, v4, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 260
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/MachiCharaWidget;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_2

    move p0, v1

    goto :goto_1

    :cond_2
    move p0, v3

    :goto_1
    if-eqz v2, :cond_3

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    .line 264
    :goto_2
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    return v2

    .line 267
    :cond_4
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 82
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 83
    invoke-direct {p0}, Lcom/android/keyguard/MachiCharaWidget;->registerReceiver()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 93
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 94
    invoke-direct {p0}, Lcom/android/keyguard/MachiCharaWidget;->unregisterReceiver()V

    return-void
.end method

.method public setDoze()V
    .locals 1

    const/4 v0, 0x1

    .line 301
    iput-boolean v0, p0, Lcom/android/keyguard/MachiCharaWidget;->mIsDoze:Z

    const/16 v0, 0x8

    .line 302
    invoke-direct {p0, v0}, Lcom/android/keyguard/MachiCharaWidget;->updateCharaLayoutVisibility(I)V

    return-void
.end method
