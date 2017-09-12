.class public final enum Lmiui/maml/elements/VariableArrayElement$Type;
.super Ljava/lang/Enum;
.source "VariableArrayElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/VariableArrayElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/maml/elements/VariableArrayElement$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/elements/VariableArrayElement$Type;

.field public static final enum DOUBLE:Lmiui/maml/elements/VariableArrayElement$Type;

.field public static final enum STRING:Lmiui/maml/elements/VariableArrayElement$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lmiui/maml/elements/VariableArrayElement$Type;

    const-string v1, "DOUBLE"

    invoke-direct {v0, v1, v2}, Lmiui/maml/elements/VariableArrayElement$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lmiui/maml/elements/VariableArrayElement$Type;

    .line 39
    new-instance v0, Lmiui/maml/elements/VariableArrayElement$Type;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v3}, Lmiui/maml/elements/VariableArrayElement$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/VariableArrayElement$Type;->STRING:Lmiui/maml/elements/VariableArrayElement$Type;

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Lmiui/maml/elements/VariableArrayElement$Type;

    sget-object v1, Lmiui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lmiui/maml/elements/VariableArrayElement$Type;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/elements/VariableArrayElement$Type;->STRING:Lmiui/maml/elements/VariableArrayElement$Type;

    aput-object v1, v0, v3

    sput-object v0, Lmiui/maml/elements/VariableArrayElement$Type;->$VALUES:[Lmiui/maml/elements/VariableArrayElement$Type;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/elements/VariableArrayElement$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lmiui/maml/elements/VariableArrayElement$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/VariableArrayElement$Type;

    return-object v0
.end method

.method public static values()[Lmiui/maml/elements/VariableArrayElement$Type;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lmiui/maml/elements/VariableArrayElement$Type;->$VALUES:[Lmiui/maml/elements/VariableArrayElement$Type;

    invoke-virtual {v0}, [Lmiui/maml/elements/VariableArrayElement$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/elements/VariableArrayElement$Type;

    return-object v0
.end method
