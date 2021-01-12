.class Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2$1;
.super Landroid/content/BroadcastReceiver;
.source "SonyClock2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2$1;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "time-zone"

    .line 92
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 93
    iget-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2$1;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;

    invoke-static {p2, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->access$000(Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;Ljava/lang/String;)V

    .line 94
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2$1;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;

    invoke-static {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->access$100(Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.TIME_TICK"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 96
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2$1;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->access$200(Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;Z)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2$1;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;

    invoke-static {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;->access$100(Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2;)V

    :goto_0
    return-void
.end method
