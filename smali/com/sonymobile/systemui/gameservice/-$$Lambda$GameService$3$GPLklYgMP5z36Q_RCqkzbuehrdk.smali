.class public final synthetic Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$GPLklYgMP5z36Q_RCqkzbuehrdk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/sonymobile/systemui/gameservice/GameService$3;

.field private final synthetic f$1:Landroid/os/IBinder;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/sonymobile/systemui/gameservice/GameService$3;Landroid/os/IBinder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$GPLklYgMP5z36Q_RCqkzbuehrdk;->f$0:Lcom/sonymobile/systemui/gameservice/GameService$3;

    iput-object p2, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$GPLklYgMP5z36Q_RCqkzbuehrdk;->f$1:Landroid/os/IBinder;

    iput p3, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$GPLklYgMP5z36Q_RCqkzbuehrdk;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$GPLklYgMP5z36Q_RCqkzbuehrdk;->f$0:Lcom/sonymobile/systemui/gameservice/GameService$3;

    iget-object v1, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$GPLklYgMP5z36Q_RCqkzbuehrdk;->f$1:Landroid/os/IBinder;

    iget p0, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$GPLklYgMP5z36Q_RCqkzbuehrdk;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/sonymobile/systemui/gameservice/GameService$3;->lambda$gameUnsetIcon$4$GameService$3(Landroid/os/IBinder;I)V

    return-void
.end method
