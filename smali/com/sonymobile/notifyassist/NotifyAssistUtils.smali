.class public Lcom/sonymobile/notifyassist/NotifyAssistUtils;
.super Ljava/lang/Object;
.source "NotifyAssistUtils.java"


# direct methods
.method private static getBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "notifyassist_pref"

    .line 38
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 39
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isCompletedNotifyNotification(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "is_completed_notify_notification"

    .line 43
    invoke-static {p0, v0}, Lcom/sonymobile/notifyassist/NotifyAssistUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isLaunchedGoogleAssistOnceByDoubleTap(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "is_launch_assistant_once_by_double_tap"

    .line 48
    invoke-static {p0, v0}, Lcom/sonymobile/notifyassist/NotifyAssistUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isNeedToShowNotifyNotification(Landroid/content/Context;)Z
    .locals 1

    .line 57
    invoke-static {p0}, Lcom/sonymobile/notifyassist/NotifyAssistUtils;->isOldTimePass(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sonymobile/notifyassist/NotifyAssistUtils;->isSetByDefaultGoogleAssistant(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isOldTimePass(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "is_old_time_pass"

    .line 62
    invoke-static {p0, v0}, Lcom/sonymobile/notifyassist/NotifyAssistUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSetAssistant(Landroid/content/Context;)Z
    .locals 3

    .line 67
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "double_tap_power_gesture_mode"

    invoke-static {p0, v2, v1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSetByDefaultGoogleAssistant(Landroid/content/Context;)Z
    .locals 2

    .line 77
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 78
    new-instance v1, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {v1, v0}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 83
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.google.android.googlequicksearchbox"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isTapNotifyNotification(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "is_tap_notify_notification"

    .line 53
    invoke-static {p0, v0}, Lcom/sonymobile/notifyassist/NotifyAssistUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static sendNotifyNotification(Landroid/content/Context;)V
    .locals 10

    const-string v0, "notification"

    .line 115
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 117
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sonymobile/notifyassist/NotifyActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x20000000

    .line 118
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x1

    const-string v3, "KEY_NOTIFY_NOTIFICATION"

    .line 119
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    .line 120
    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 123
    sget v4, Lcom/android/systemui/R$string;->power_key_double_tap_notification_title:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 124
    sget v5, Lcom/android/systemui/R$string;->power_key_double_tap_notification_subtitle:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 126
    new-instance v6, Landroid/widget/RemoteViews;

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/android/systemui/R$layout;->notify_notification_expand_layout:I

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v7, 0x104008e

    .line 129
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 130
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v9, "android.substName"

    .line 131
    invoke-virtual {v8, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v7, Landroid/app/Notification$Builder;

    sget-object v9, Lcom/android/systemui/util/NotificationChannels;->HINTS:Ljava/lang/String;

    invoke-direct {v7, p0, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 135
    invoke-virtual {p0, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    sget v4, Lcom/android/systemui/R$drawable;->notify_notification_small_icn:I

    .line 136
    invoke-virtual {p0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 137
    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 138
    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 139
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 140
    invoke-virtual {p0, v8}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object p0

    new-instance v1, Landroid/app/Notification$DecoratedCustomViewStyle;

    invoke-direct {v1}, Landroid/app/Notification$DecoratedCustomViewStyle;-><init>()V

    .line 141
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 142
    invoke-virtual {p0, v6}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 143
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 144
    iget v1, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Landroid/app/Notification;->flags:I

    .line 145
    sget v1, Lcom/android/systemui/R$string;->app_label:I

    invoke-virtual {v0, v1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private static setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "notifyassist_pref"

    const/4 v1, 0x0

    .line 88
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 89
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 90
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 91
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setCompletedNotifyNotification(Landroid/content/Context;)Z
    .locals 2

    .line 95
    invoke-static {p0}, Lcom/sonymobile/notifyassist/NotifyAssistUtils;->isLaunchedGoogleAssistOnceByDoubleTap(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    invoke-static {p0}, Lcom/sonymobile/notifyassist/NotifyAssistUtils;->isTapNotifyNotification(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "is_completed_notify_notification"

    .line 97
    invoke-static {p0, v1, v0}, Lcom/sonymobile/notifyassist/NotifyAssistUtils;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return v0
.end method

.method public static setLaunchedGoogleAssistOnceByDoubleTap(Landroid/content/Context;)V
    .locals 2

    const-string v0, "is_launch_assistant_once_by_double_tap"

    const/4 v1, 0x1

    .line 102
    invoke-static {p0, v0, v1}, Lcom/sonymobile/notifyassist/NotifyAssistUtils;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setOldTimePass(Landroid/content/Context;)V
    .locals 2

    const-string v0, "is_old_time_pass"

    const/4 v1, 0x1

    .line 110
    invoke-static {p0, v0, v1}, Lcom/sonymobile/notifyassist/NotifyAssistUtils;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setTapNotifyNotification(Landroid/content/Context;)V
    .locals 2

    const-string v0, "is_tap_notify_notification"

    const/4 v1, 0x1

    .line 106
    invoke-static {p0, v0, v1}, Lcom/sonymobile/notifyassist/NotifyAssistUtils;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
