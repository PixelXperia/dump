.class Lcom/android/settings/IccLockSettings$CheckRemainingAttempts;
.super Ljava/lang/Thread;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckRemainingAttempts"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field private final mSubId:I

.field final synthetic this$0:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;ILjava/lang/String;)V
    .locals 0

    .line 669
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$CheckRemainingAttempts;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 670
    iput p2, p0, Lcom/android/settings/IccLockSettings$CheckRemainingAttempts;->mSubId:I

    .line 671
    iput-object p3, p0, Lcom/android/settings/IccLockSettings$CheckRemainingAttempts;->mPin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    const-string v0, "phone"

    .line 677
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/IccLockSettings$CheckRemainingAttempts;->mSubId:I

    iget-object v2, p0, Lcom/android/settings/IccLockSettings$CheckRemainingAttempts;->mPin:Ljava/lang/String;

    .line 678
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v0

    .line 681
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$CheckRemainingAttempts;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->access$700(Lcom/android/settings/IccLockSettings;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x67

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    .line 682
    aget v2, v0, v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    .line 683
    aget v0, v0, v2

    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 684
    iget-object p0, p0, Lcom/android/settings/IccLockSettings$CheckRemainingAttempts;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {p0}, Lcom/android/settings/IccLockSettings;->access$700(Lcom/android/settings/IccLockSettings;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
