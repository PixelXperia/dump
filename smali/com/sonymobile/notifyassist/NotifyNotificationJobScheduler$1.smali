.class Lcom/sonymobile/notifyassist/NotifyNotificationJobScheduler$1;
.super Ljava/lang/Object;
.source "NotifyNotificationJobScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/notifyassist/NotifyNotificationJobScheduler;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/notifyassist/NotifyNotificationJobScheduler;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sonymobile/notifyassist/NotifyNotificationJobScheduler;Landroid/content/Context;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/sonymobile/notifyassist/NotifyNotificationJobScheduler$1;->this$0:Lcom/sonymobile/notifyassist/NotifyNotificationJobScheduler;

    iput-object p2, p0, Lcom/sonymobile/notifyassist/NotifyNotificationJobScheduler$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/sonymobile/notifyassist/NotifyNotificationJobScheduler$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/notifyassist/NotifyAssistUtils;->isLaunchedGoogleAssistOnceByDoubleTap(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/notifyassist/NotifyNotificationJobScheduler$1;->val$context:Landroid/content/Context;

    .line 55
    invoke-static {v0}, Lcom/sonymobile/notifyassist/NotifyAssistUtils;->isSetByDefaultGoogleAssistant(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object p0, p0, Lcom/sonymobile/notifyassist/NotifyNotificationJobScheduler$1;->val$context:Landroid/content/Context;

    invoke-static {p0}, Lcom/sonymobile/notifyassist/NotifyAssistUtils;->sendNotifyNotification(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
