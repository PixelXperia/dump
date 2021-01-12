.class public final synthetic Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$eOW6RyNdN7dgHm_sYNbNll20Sk0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/sonymobile/systemui/gameservice/GameService$3;

.field private final synthetic f$1:Landroid/os/IBinder;

.field private final synthetic f$2:I

.field private final synthetic f$3:Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;


# direct methods
.method public synthetic constructor <init>(Lcom/sonymobile/systemui/gameservice/GameService$3;Landroid/os/IBinder;ILcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$eOW6RyNdN7dgHm_sYNbNll20Sk0;->f$0:Lcom/sonymobile/systemui/gameservice/GameService$3;

    iput-object p2, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$eOW6RyNdN7dgHm_sYNbNll20Sk0;->f$1:Landroid/os/IBinder;

    iput p3, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$eOW6RyNdN7dgHm_sYNbNll20Sk0;->f$2:I

    iput-object p4, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$eOW6RyNdN7dgHm_sYNbNll20Sk0;->f$3:Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$eOW6RyNdN7dgHm_sYNbNll20Sk0;->f$0:Lcom/sonymobile/systemui/gameservice/GameService$3;

    iget-object v1, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$eOW6RyNdN7dgHm_sYNbNll20Sk0;->f$1:Landroid/os/IBinder;

    iget v2, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$eOW6RyNdN7dgHm_sYNbNll20Sk0;->f$2:I

    iget-object p0, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$3$eOW6RyNdN7dgHm_sYNbNll20Sk0;->f$3:Lcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;

    invoke-virtual {v0, v1, v2, p0}, Lcom/sonymobile/systemui/gameservice/GameService$3;->lambda$gameSetOnGestureListener$5$GameService$3(Landroid/os/IBinder;ILcom/sonymobile/systemui/gameservice/IGameServiceOnGestureListener;)V

    return-void
.end method
