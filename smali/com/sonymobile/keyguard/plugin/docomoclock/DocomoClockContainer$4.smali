.class Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer$4;
.super Landroid/database/ContentObserver;
.source "DocomoClockContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->registerTimeSettingsChangeObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;Landroid/os/Handler;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer$4;->this$0:Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 332
    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer$4;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 336
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer$4;->this$0:Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->refreshTime()V

    return-void
.end method
