.class public Lcom/sonymobile/settingslib/logging/LoggingManager;
.super Ljava/lang/Object;
.source "LoggingManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoggingManager"


# direct methods
.method private static logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    and-int/lit8 p5, p5, 0x1

    if-eqz p5, :cond_0

    .line 51
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonymobile/settingslib/logging/LoggingManager;->sendIddEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static logQSEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .line 34
    invoke-static {p0, p1, p2, p3}, Lcom/sonymobile/settingslib/qs/Notifier;->onQsEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "long_click"

    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v6, 0x1

    const-string v2, "qs_event"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 39
    invoke-static/range {v1 .. v6}, Lcom/sonymobile/settingslib/logging/LoggingManager;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method private static putValueToJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 86
    :try_start_0
    invoke-static {p2}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 88
    sget-object p1, Lcom/sonymobile/settingslib/logging/LoggingManager;->TAG:Ljava/lang/String;

    const-string p2, "Failed to put value to JSON"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static sendIddEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 57
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    .line 58
    invoke-static {v0, v1, p1}, Lcom/sonymobile/settingslib/logging/LoggingManager;->putValueToJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    const-string p1, "sub_type"

    .line 60
    invoke-static {v0, p1, p2}, Lcom/sonymobile/settingslib/logging/LoggingManager;->putValueToJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string p1, "action"

    .line 62
    invoke-static {v0, p1, p3}, Lcom/sonymobile/settingslib/logging/LoggingManager;->putValueToJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "value"

    .line 63
    invoke-static {v0, p1, p4}, Lcom/sonymobile/settingslib/logging/LoggingManager;->putValueToJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 66
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p0, p1, p2, v0}, Lcom/sonyericsson/idd/api/Idd;->addAppDataJSON(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method
