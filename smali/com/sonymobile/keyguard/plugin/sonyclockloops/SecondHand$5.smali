.class Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$5;
.super Landroid/content/BroadcastReceiver;
.source "SecondHand.java"


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

    .line 97
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$5;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "time-zone"

    .line 101
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 102
    iget-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$5;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

    invoke-static {p2, p1}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->access$200(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;Ljava/lang/String;)V

    .line 104
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$5;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

    invoke-static {p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->access$300(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;)V

    return-void
.end method
