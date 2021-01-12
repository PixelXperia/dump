.class Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$1;
.super Landroid/database/ContentObserver;
.source "SonyClockLoops.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;Landroid/os/Handler;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$1;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$1;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$1;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;

    invoke-static {p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->access$000(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;)V

    return-void
.end method
