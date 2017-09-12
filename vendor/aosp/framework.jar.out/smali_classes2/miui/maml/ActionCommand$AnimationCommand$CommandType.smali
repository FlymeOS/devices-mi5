.class final enum Lmiui/maml/ActionCommand$AnimationCommand$CommandType;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand$AnimationCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/maml/ActionCommand$AnimationCommand$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

.field public static final enum INVALID:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

.field public static final enum PAUSE:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

.field public static final enum PLAY:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

.field public static final enum PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

.field public static final enum RESUME:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1384
    new-instance v0, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v2}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->INVALID:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 1385
    new-instance v0, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    const-string v1, "PLAY"

    invoke-direct {v0, v1, v3}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 1386
    new-instance v0, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v4}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PAUSE:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 1387
    new-instance v0, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v5}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->RESUME:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 1388
    new-instance v0, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    const-string v1, "PLAY_WITH_PARAMS"

    invoke-direct {v0, v1, v6}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 1383
    const/4 v0, 0x5

    new-array v0, v0, [Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    sget-object v1, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->INVALID:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PAUSE:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->RESUME:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    aput-object v1, v0, v6

    sput-object v0, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->$VALUES:[Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1383
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/ActionCommand$AnimationCommand$CommandType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1383
    const-class v0, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    return-object v0
.end method

.method public static values()[Lmiui/maml/ActionCommand$AnimationCommand$CommandType;
    .locals 1

    .prologue
    .line 1383
    sget-object v0, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->$VALUES:[Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v0}, [Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    return-object v0
.end method
