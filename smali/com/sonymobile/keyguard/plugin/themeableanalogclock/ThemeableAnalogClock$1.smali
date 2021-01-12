.class Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock$1;
.super Ljava/lang/Object;
.source "ThemeableAnalogClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 73
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;

    invoke-static {v0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->access$100(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;

    invoke-static {v1}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->access$000(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 76
    rem-long v4, v0, v2

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 78
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;

    invoke-virtual {v2}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->onTimeChanged()V

    .line 80
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;

    invoke-static {v2}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->access$100(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;)Landroid/os/Handler;

    move-result-object v2

    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;

    invoke-static {p0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->access$000(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method
