.class public final synthetic Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$Client$3Gjg6RIMCBjD7zEJyuhbOrdlbfc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/sonymobile/systemui/gameservice/GameService$Client;


# direct methods
.method public synthetic constructor <init>(Lcom/sonymobile/systemui/gameservice/GameService$Client;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$Client$3Gjg6RIMCBjD7zEJyuhbOrdlbfc;->f$0:Lcom/sonymobile/systemui/gameservice/GameService$Client;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$Client$3Gjg6RIMCBjD7zEJyuhbOrdlbfc;->f$0:Lcom/sonymobile/systemui/gameservice/GameService$Client;

    invoke-virtual {p0}, Lcom/sonymobile/systemui/gameservice/GameService$Client;->lambda$binderDied$0$GameService$Client()V

    return-void
.end method
