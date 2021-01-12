.class public Lcom/sonymobile/notifyassist/NotifyBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotifyBootReceiver.java"


# static fields
.field private static final DEBUG:Z

.field private static final NOTIFY_NOTIFICATION_MARGIN_TIME:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x927c0

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/notifyassist/NotifyBootReceiver;->NOTIFY_NOTIFICATION_MARGIN_TIME:Ljava/lang/Long;

    const-string v0, "NotifyBootReceiver"

    const/4 v1, 0x3

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/sonymobile/notifyassist/NotifyBootReceiver;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private debugModeNotifyNotificationIfNeed(Landroid/content/Context;)V
    .locals 6

    .line 94
    invoke-static {}, Lcom/sonymobile/notifyassist/common/debugmode/DebugModeUtils;->getLatencyTimeForDebug()J

    move-result-wide v0

    const-wide/32 v2, 0x48190800

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const-string p0, "jobscheduler"

    .line 97
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    const/4 p1, 0x1

    .line 98
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 100
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v2

    sget-object v4, Lcom/sonymobile/notifyassist/NotifyBootReceiver;->NOTIFY_NOTIFICATION_MARGIN_TIME:Ljava/lang/Long;

    .line 101
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const-string v0, "NotifyBootReceiver"

    const-string v1, "Cancel the job scheduler for debug."

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    :cond_0
    return-void
.end method

.method private isAmazonProduct(Landroid/content/Context;)Z
    .locals 1

    const/4 p0, 0x0

    .line 70
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.quicinc.voice.activation"

    invoke-virtual {p1, v0, p0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 72
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    return v0

    :catch_0
    :cond_0
    return p0
.end method

.method private startNotifyNotificationJobScheduler(Landroid/content/Context;)V
    .locals 1

    .line 83
    invoke-static {p1}, Lcom/sonymobile/notifyassist/NotifyAssistUtils;->isNeedToShowNotifyNotification(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {p1}, Lcom/sonymobile/notifyassist/NotifyAssistUtils;->sendNotifyNotification(Landroid/content/Context;)V

    return-void

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonymobile/notifyassist/NotifyBootReceiver;->debugModeNotifyNotificationIfNeed(Landroid/content/Context;)V

    .line 88
    new-instance p0, Lcom/sonymobile/notifyassist/NotifyNotificationJobScheduler;

    invoke-direct {p0}, Lcom/sonymobile/notifyassist/NotifyNotificationJobScheduler;-><init>()V

    .line 89
    invoke-virtual {p0, p1}, Lcom/sonymobile/notifyassist/NotifyNotificationJobScheduler;->scheduleNotifyNotification(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 42
    sget-boolean v0, Lcom/sonymobile/notifyassist/NotifyBootReceiver;->DEBUG:Z

    const-string v1, "NotifyBootReceiver"

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 46
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 47
    invoke-direct {p0, p1}, Lcom/sonymobile/notifyassist/NotifyBootReceiver;->isAmazonProduct(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 48
    sget-boolean p0, Lcom/sonymobile/notifyassist/NotifyBootReceiver;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "Do not schedule Notify because Amazon Phone"

    .line 49
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_1
    invoke-static {p1}, Lcom/sonymobile/notifyassist/NotifyAssistUtils;->isLaunchedGoogleAssistOnceByDoubleTap(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 52
    invoke-static {p1}, Lcom/sonymobile/notifyassist/NotifyAssistUtils;->setLaunchedGoogleAssistOnceByDoubleTap(Landroid/content/Context;)V

    :cond_2
    return-void

    .line 57
    :cond_3
    invoke-static {p1}, Lcom/sonymobile/notifyassist/NotifyAssistUtils;->isCompletedNotifyNotification(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 58
    invoke-static {p1}, Lcom/sonymobile/notifyassist/NotifyAssistUtils;->setCompletedNotifyNotification(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 59
    sget-boolean p2, Lcom/sonymobile/notifyassist/NotifyBootReceiver;->DEBUG:Z

    if-eqz p2, :cond_4

    const-string p2, "not Completed Notify Notification"

    .line 60
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_4
    invoke-direct {p0, p1}, Lcom/sonymobile/notifyassist/NotifyBootReceiver;->startNotifyNotificationJobScheduler(Landroid/content/Context;)V

    :cond_5
    return-void
.end method
