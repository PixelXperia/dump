.class Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$1;
.super Landroid/content/BroadcastReceiver;
.source "SonyClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "time-zone"

    .line 95
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 96
    iget-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;

    invoke-static {p2, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->access$000(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;Ljava/lang/String;)V

    .line 97
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;

    invoke-static {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->access$100(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.TIME_TICK"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 99
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->access$200(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;Z)V

    goto :goto_0

    .line 101
    :cond_1
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;

    invoke-static {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->access$100(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;)V

    :goto_0
    return-void
.end method
