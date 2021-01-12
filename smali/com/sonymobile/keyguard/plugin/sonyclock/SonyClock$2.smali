.class Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;Landroid/os/Handler;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$2;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$2;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$2;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;

    invoke-static {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->access$100(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;)V

    return-void
.end method
