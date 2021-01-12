.class public Lcom/sonymobile/settingslib/qs/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# direct methods
.method public static onClickEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "click"

    .line 48
    invoke-static {p0, v0, p1}, Lcom/sonymobile/settingslib/qs/Notifier;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onLongClickEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "long_click"

    .line 52
    invoke-static {p0, v0, p1}, Lcom/sonymobile/settingslib/qs/Notifier;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onQsEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "click"

    .line 57
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "custom"

    .line 58
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "custom("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-static {p0, p1}, Lcom/sonymobile/settingslib/qs/Notifier;->onClickEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {p0, p1}, Lcom/sonymobile/settingslib/qs/Notifier;->onClickEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p3, "long_click"

    .line 64
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 65
    invoke-static {p0, p1}, Lcom/sonymobile/settingslib/qs/Notifier;->onLongClickEvent(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.settingslib.intent.action.QUICK_SETTINGS_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sonymobile.settingslib.intent.extra.EVENT_TYPE"

    .line 41
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.sonymobile.settingslib.intent.extra.TILE_SPEC"

    .line 42
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p2, "com.sonymobile.systemui.permission.RECEIVE_QS_EVENTS"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method
