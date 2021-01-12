.class Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$7;
.super Ljava/lang/Object;
.source "SecondHand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$7;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 142
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$7;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

    invoke-static {v0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->access$800(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$7;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

    invoke-static {v1}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->access$700(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 143
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$7;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

    invoke-static {v0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->access$900(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$7;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

    invoke-static {v0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->access$300(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;)V

    .line 146
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 147
    rem-long v4, v0, v2

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 148
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$7;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

    invoke-static {v2}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->access$800(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method
