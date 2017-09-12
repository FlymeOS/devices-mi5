.class final enum Lmiui/maml/data/FormatFunctions$Fun;
.super Ljava/lang/Enum;
.source "FormatFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/FormatFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Fun"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/maml/data/FormatFunctions$Fun;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/data/FormatFunctions$Fun;

.field public static final enum FORMAT_DATE:Lmiui/maml/data/FormatFunctions$Fun;

.field public static final enum FORMAT_FLOAT:Lmiui/maml/data/FormatFunctions$Fun;

.field public static final enum FORMAT_INT:Lmiui/maml/data/FormatFunctions$Fun;

.field public static final enum INVALID:Lmiui/maml/data/FormatFunctions$Fun;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lmiui/maml/data/FormatFunctions$Fun;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/FormatFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/FormatFunctions$Fun;->INVALID:Lmiui/maml/data/FormatFunctions$Fun;

    .line 16
    new-instance v0, Lmiui/maml/data/FormatFunctions$Fun;

    const-string v1, "FORMAT_DATE"

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/FormatFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/FormatFunctions$Fun;->FORMAT_DATE:Lmiui/maml/data/FormatFunctions$Fun;

    .line 17
    new-instance v0, Lmiui/maml/data/FormatFunctions$Fun;

    const-string v1, "FORMAT_FLOAT"

    invoke-direct {v0, v1, v4}, Lmiui/maml/data/FormatFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/FormatFunctions$Fun;->FORMAT_FLOAT:Lmiui/maml/data/FormatFunctions$Fun;

    .line 18
    new-instance v0, Lmiui/maml/data/FormatFunctions$Fun;

    const-string v1, "FORMAT_INT"

    invoke-direct {v0, v1, v5}, Lmiui/maml/data/FormatFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/FormatFunctions$Fun;->FORMAT_INT:Lmiui/maml/data/FormatFunctions$Fun;

    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [Lmiui/maml/data/FormatFunctions$Fun;

    sget-object v1, Lmiui/maml/data/FormatFunctions$Fun;->INVALID:Lmiui/maml/data/FormatFunctions$Fun;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/FormatFunctions$Fun;->FORMAT_DATE:Lmiui/maml/data/FormatFunctions$Fun;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/maml/data/FormatFunctions$Fun;->FORMAT_FLOAT:Lmiui/maml/data/FormatFunctions$Fun;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/maml/data/FormatFunctions$Fun;->FORMAT_INT:Lmiui/maml/data/FormatFunctions$Fun;

    aput-object v1, v0, v5

    sput-object v0, Lmiui/maml/data/FormatFunctions$Fun;->$VALUES:[Lmiui/maml/data/FormatFunctions$Fun;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/data/FormatFunctions$Fun;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lmiui/maml/data/FormatFunctions$Fun;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/FormatFunctions$Fun;

    return-object v0
.end method

.method public static values()[Lmiui/maml/data/FormatFunctions$Fun;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lmiui/maml/data/FormatFunctions$Fun;->$VALUES:[Lmiui/maml/data/FormatFunctions$Fun;

    invoke-virtual {v0}, [Lmiui/maml/data/FormatFunctions$Fun;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/data/FormatFunctions$Fun;

    return-object v0
.end method
