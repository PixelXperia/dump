.class Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$2;
.super Landroid/content/BroadcastReceiver;
.source "AnalogClock.java"


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

    .line 125
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$2;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "time-zone"

    .line 129
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 130
    iget-object p2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$2;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    invoke-static {p2, p1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->access$500(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;Ljava/lang/String;)V

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$2;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    invoke-static {p1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->access$200(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)V

    .line 133
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$2;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    invoke-static {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->access$400(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)V

    return-void
.end method
