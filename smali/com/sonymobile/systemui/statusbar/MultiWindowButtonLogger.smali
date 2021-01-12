.class public Lcom/sonymobile/systemui/statusbar/MultiWindowButtonLogger;
.super Ljava/lang/Object;
.source "MultiWindowButtonLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiWindowButtonLogger"


# direct methods
.method public static logEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "mw_event"

    .line 27
    invoke-static {v0, v1, v2}, Lcom/sonymobile/systemui/statusbar/MultiWindowButtonLogger;->putValueToJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "action"

    .line 28
    invoke-static {v0, v1, p1}, Lcom/sonymobile/systemui/statusbar/MultiWindowButtonLogger;->putValueToJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 30
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p0, p1, v1, v0}, Lcom/sonyericsson/idd/api/Idd;->addAppDataJSON(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method

.method private static putValueToJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    :try_start_0
    invoke-static {p2}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 37
    sget-object p1, Lcom/sonymobile/systemui/statusbar/MultiWindowButtonLogger;->TAG:Ljava/lang/String;

    const-string p2, "Failed to put value to JSON"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
