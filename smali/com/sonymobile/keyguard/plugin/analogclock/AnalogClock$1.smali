.class Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;
.super Ljava/lang/Object;
.source "AnalogClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 107
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    invoke-static {v0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->access$100(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    invoke-static {v1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->access$000(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 110
    rem-long v4, v0, v2

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 112
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    invoke-static {v2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->access$200(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)V

    .line 115
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    invoke-static {v2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->access$300(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    .line 116
    invoke-static {v2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->access$300(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    .line 117
    invoke-static {v2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->access$300(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    invoke-static {v2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->access$400(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)V

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    invoke-static {v2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->access$100(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method
