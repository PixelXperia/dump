.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$RecentsSystemUser$RuMGq01oJynKESbiTF6h02bxcQ4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/RecentsSystemUser;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/RecentsSystemUser;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsSystemUser$RuMGq01oJynKESbiTF6h02bxcQ4;->f$0:Lcom/android/systemui/recents/RecentsSystemUser;

    iput p2, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsSystemUser$RuMGq01oJynKESbiTF6h02bxcQ4;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsSystemUser$RuMGq01oJynKESbiTF6h02bxcQ4;->f$0:Lcom/android/systemui/recents/RecentsSystemUser;

    iget p0, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsSystemUser$RuMGq01oJynKESbiTF6h02bxcQ4;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/RecentsSystemUser;->lambda$startScreenPinning$1$RecentsSystemUser(I)V

    return-void
.end method
