.class public final enum Lmiui/maml/ActionCommand$TargetCommand$TargetType;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand$TargetCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "TargetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/maml/ActionCommand$TargetCommand$TargetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/ActionCommand$TargetCommand$TargetType;

.field public static final enum CONSTRUCTOR:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

.field public static final enum SCREEN_ELEMENT:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

.field public static final enum VARIABLE:Lmiui/maml/ActionCommand$TargetCommand$TargetType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1292
    new-instance v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    const-string v1, "SCREEN_ELEMENT"

    invoke-direct {v0, v1, v2}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    .line 1293
    new-instance v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    const-string v1, "VARIABLE"

    invoke-direct {v0, v1, v3}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    .line 1294
    new-instance v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    const-string v1, "CONSTRUCTOR"

    invoke-direct {v0, v1, v4}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->CONSTRUCTOR:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    .line 1291
    const/4 v0, 0x3

    new-array v0, v0, [Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->CONSTRUCTOR:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    aput-object v1, v0, v4

    sput-object v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->$VALUES:[Lmiui/maml/ActionCommand$TargetCommand$TargetType;

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
    .line 1291
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/ActionCommand$TargetCommand$TargetType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1291
    const-class v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    return-object v0
.end method

.method public static values()[Lmiui/maml/ActionCommand$TargetCommand$TargetType;
    .locals 1

    .prologue
    .line 1291
    sget-object v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->$VALUES:[Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v0}, [Lmiui/maml/ActionCommand$TargetCommand$TargetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    return-object v0
.end method
