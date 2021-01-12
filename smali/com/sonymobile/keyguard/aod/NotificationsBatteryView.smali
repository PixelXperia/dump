.class public Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;
.super Landroid/widget/LinearLayout;
.source "NotificationsBatteryView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationsBatteryView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsDozing:Z

.field private mNewArrivalViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonymobile/keyguard/aod/NotificationAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->mNewArrivalViews:Ljava/util/List;

    .line 54
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->mNotifAnimations:Ljava/util/List;

    .line 58
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addBatteryMeterView()V
    .locals 5

    .line 200
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->somc_aod_notification_heightwidth:I

    .line 201
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 202
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->somc_aod_notification_margin:I

    .line 203
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 205
    new-instance v2, Lcom/android/systemui/BatteryMeterView;

    iget-object v3, p0, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 206
    invoke-virtual {v2, v3}, Lcom/android/systemui/BatteryMeterView;->setForceShowPercent(Z)V

    .line 207
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 209
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v0, 0x10

    .line 210
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 211
    invoke-virtual {p0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addNotificationsView()V
    .locals 12

    .line 109
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 110
    const-class v1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 111
    iget-object v2, p0, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->mNewArrivalViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 115
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 116
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 117
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    .line 122
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    const/16 v8, 0x8

    if-ne v5, v8, :cond_1

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v7}, Landroid/app/Notification;->isGroupChild()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {v7}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    if-nez v5, :cond_3

    .line 136
    sget-object v5, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "small icon in notification from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 142
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v9

    cmp-long v6, v7, v9

    const/4 v11, 0x1

    if-lez v6, :cond_4

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x1f4

    cmp-long v6, v7, v9

    if-gez v6, :cond_4

    move v6, v11

    goto :goto_1

    :cond_4
    move v6, v2

    .line 149
    :goto_1
    iget-object v7, p0, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_0

    .line 153
    :cond_5
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v8, -0x1

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 154
    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 155
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lcom/android/systemui/R$dimen;->somc_aod_notification_heightwidth:I

    .line 157
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 158
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/systemui/R$dimen;->somc_aod_notification_margin:I

    .line 159
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 160
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 161
    invoke-virtual {v9, v8, v8, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/4 v5, 0x3

    if-ge v3, v5, :cond_6

    .line 163
    invoke-virtual {p0, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v6, :cond_7

    .line 165
    iget-object v5, p0, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->mNewArrivalViews:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    if-eqz v6, :cond_7

    move v4, v11

    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 172
    :cond_8
    invoke-direct {p0, v3, v4}, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->addRestNotificationNumView(IZ)V

    return-void
.end method

.method private addRestNotificationNumView(IZ)V
    .locals 5

    .line 176
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    add-int/lit8 p1, p1, -0x3

    if-lez p1, :cond_0

    .line 179
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->somc_aod_notification_margin:I

    .line 180
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 181
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->somc_aod_notification_textsize:I

    .line 182
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    .line 185
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p1, 0x0

    int-to-float v2, v2

    .line 187
    invoke-virtual {v0, p1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 188
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 190
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0x10

    .line 191
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 192
    invoke-virtual {p0, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_0

    .line 194
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->mNewArrivalViews:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onUpdateNotifications()V
    .locals 1

    .line 215
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->mIsDozing:Z

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->refresh()V

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 4

    .line 89
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 90
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->addNotificationsView()V

    .line 91
    invoke-direct {p0}, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->addBatteryMeterView()V

    const/4 v0, 0x0

    move v1, v0

    .line 95
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->mNotifAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->mNotifAnimations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/keyguard/aod/NotificationAnimation;

    invoke-virtual {v2}, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->stopNotificationAnimation()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->mNotifAnimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 100
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->mNewArrivalViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->mNewArrivalViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 102
    new-instance v2, Lcom/sonymobile/keyguard/aod/NotificationAnimation;

    iget-object v3, p0, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sonymobile/keyguard/aod/NotificationAnimation;-><init>(Landroid/content/Context;)V

    .line 103
    iget-object v3, p0, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->mNotifAnimations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {v2, v1}, Lcom/sonymobile/keyguard/aod/NotificationAnimation;->startNotificationAnimation(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setDozing(Z)V
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->mIsDozing:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 69
    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->mIsDozing:Z

    .line 71
    iget-boolean p1, p0, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->mIsDozing:Z

    if-eqz p1, :cond_2

    .line 74
    iget-object p1, p0, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/android/systemui/SystemUIApplication;

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 75
    invoke-virtual {p1, v0}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result p1

    .line 76
    iget-object v0, p0, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->mContext:Landroid/content/Context;

    .line 77
    invoke-static {v0}, Lcom/sonymobile/lockscreen/notifications/SomcLockscreenNotifications;->shouldFilterOutOldNotifications(Landroid/content/Context;)Z

    move-result v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 79
    iget-object p1, p0, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->filterAndSort(Z)V

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->refresh()V

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :goto_0
    return-void
.end method

.method public setNotificationData(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/NotificationsBatteryView;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    return-void
.end method
