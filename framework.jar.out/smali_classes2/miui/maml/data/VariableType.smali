.class public final enum Lmiui/maml/data/VariableType;
.super Ljava/lang/Enum;
.source "VariableType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/maml/data/VariableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/data/VariableType;

.field public static final enum BOOLEAN_ARR:Lmiui/maml/data/VariableType;

.field public static final enum BYTE_ARR:Lmiui/maml/data/VariableType;

.field public static final enum CHAR_ARR:Lmiui/maml/data/VariableType;

.field public static final enum DOUBLE_ARR:Lmiui/maml/data/VariableType;

.field public static final enum FLOAT_ARR:Lmiui/maml/data/VariableType;

.field public static final enum INT_ARR:Lmiui/maml/data/VariableType;

.field public static final enum INVALID:Lmiui/maml/data/VariableType;

.field public static final enum LONG_ARR:Lmiui/maml/data/VariableType;

.field public static final enum NUM:Lmiui/maml/data/VariableType;

.field public static final enum NUM_ARR:Lmiui/maml/data/VariableType;

.field public static final enum OBJ:Lmiui/maml/data/VariableType;

.field public static final enum OBJ_ARR:Lmiui/maml/data/VariableType;

.field public static final enum SHORT_ARR:Lmiui/maml/data/VariableType;

.field public static final enum STR:Lmiui/maml/data/VariableType;

.field public static final enum STR_ARR:Lmiui/maml/data/VariableType;


# instance fields
.field public final mTypeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5
    new-instance v0, Lmiui/maml/data/VariableType;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v2}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->INVALID:Lmiui/maml/data/VariableType;

    .line 6
    new-instance v0, Lmiui/maml/data/VariableType;

    const-string v1, "NUM"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v5, v2}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->NUM:Lmiui/maml/data/VariableType;

    .line 7
    new-instance v0, Lmiui/maml/data/VariableType;

    const-string v1, "STR"

    const-class v2, Ljava/lang/String;

    invoke-direct {v0, v1, v6, v2}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->STR:Lmiui/maml/data/VariableType;

    .line 8
    new-instance v0, Lmiui/maml/data/VariableType;

    const-string v1, "OBJ"

    const-class v2, Ljava/lang/Object;

    invoke-direct {v0, v1, v7, v2}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->OBJ:Lmiui/maml/data/VariableType;

    .line 10
    new-instance v0, Lmiui/maml/data/VariableType;

    const-string v1, "NUM_ARR"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v8, v2}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->NUM_ARR:Lmiui/maml/data/VariableType;

    .line 11
    new-instance v0, Lmiui/maml/data/VariableType;

    const-string v1, "DOUBLE_ARR"

    const/4 v2, 0x5

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->DOUBLE_ARR:Lmiui/maml/data/VariableType;

    .line 12
    new-instance v0, Lmiui/maml/data/VariableType;

    const-string v1, "FLOAT_ARR"

    const/4 v2, 0x6

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->FLOAT_ARR:Lmiui/maml/data/VariableType;

    .line 13
    new-instance v0, Lmiui/maml/data/VariableType;

    const-string v1, "INT_ARR"

    const/4 v2, 0x7

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->INT_ARR:Lmiui/maml/data/VariableType;

    .line 14
    new-instance v0, Lmiui/maml/data/VariableType;

    const-string v1, "SHORT_ARR"

    const/16 v2, 0x8

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->SHORT_ARR:Lmiui/maml/data/VariableType;

    .line 15
    new-instance v0, Lmiui/maml/data/VariableType;

    const-string v1, "BYTE_ARR"

    const/16 v2, 0x9

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->BYTE_ARR:Lmiui/maml/data/VariableType;

    .line 16
    new-instance v0, Lmiui/maml/data/VariableType;

    const-string v1, "LONG_ARR"

    const/16 v2, 0xa

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->LONG_ARR:Lmiui/maml/data/VariableType;

    .line 17
    new-instance v0, Lmiui/maml/data/VariableType;

    const-string v1, "BOOLEAN_ARR"

    const/16 v2, 0xb

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->BOOLEAN_ARR:Lmiui/maml/data/VariableType;

    .line 18
    new-instance v0, Lmiui/maml/data/VariableType;

    const-string v1, "CHAR_ARR"

    const/16 v2, 0xc

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->CHAR_ARR:Lmiui/maml/data/VariableType;

    .line 20
    new-instance v0, Lmiui/maml/data/VariableType;

    const-string v1, "STR_ARR"

    const/16 v2, 0xd

    const-class v3, Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->STR_ARR:Lmiui/maml/data/VariableType;

    .line 21
    new-instance v0, Lmiui/maml/data/VariableType;

    const-string v1, "OBJ_ARR"

    const/16 v2, 0xe

    const-class v3, Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->OBJ_ARR:Lmiui/maml/data/VariableType;

    .line 4
    const/16 v0, 0xf

    new-array v0, v0, [Lmiui/maml/data/VariableType;

    sget-object v1, Lmiui/maml/data/VariableType;->INVALID:Lmiui/maml/data/VariableType;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/maml/data/VariableType;->NUM:Lmiui/maml/data/VariableType;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/maml/data/VariableType;->STR:Lmiui/maml/data/VariableType;

    aput-object v1, v0, v6

    sget-object v1, Lmiui/maml/data/VariableType;->OBJ:Lmiui/maml/data/VariableType;

    aput-object v1, v0, v7

    sget-object v1, Lmiui/maml/data/VariableType;->NUM_ARR:Lmiui/maml/data/VariableType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lmiui/maml/data/VariableType;->DOUBLE_ARR:Lmiui/maml/data/VariableType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lmiui/maml/data/VariableType;->FLOAT_ARR:Lmiui/maml/data/VariableType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lmiui/maml/data/VariableType;->INT_ARR:Lmiui/maml/data/VariableType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lmiui/maml/data/VariableType;->SHORT_ARR:Lmiui/maml/data/VariableType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lmiui/maml/data/VariableType;->BYTE_ARR:Lmiui/maml/data/VariableType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lmiui/maml/data/VariableType;->LONG_ARR:Lmiui/maml/data/VariableType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lmiui/maml/data/VariableType;->BOOLEAN_ARR:Lmiui/maml/data/VariableType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lmiui/maml/data/VariableType;->CHAR_ARR:Lmiui/maml/data/VariableType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lmiui/maml/data/VariableType;->STR_ARR:Lmiui/maml/data/VariableType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lmiui/maml/data/VariableType;->OBJ_ARR:Lmiui/maml/data/VariableType;

    aput-object v2, v0, v1

    sput-object v0, Lmiui/maml/data/VariableType;->$VALUES:[Lmiui/maml/data/VariableType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput-object p3, p0, Lmiui/maml/data/VariableType;->mTypeClass:Ljava/lang/Class;

    .line 60
    return-void
.end method

.method public static parseType(Ljava/lang/String;)Lmiui/maml/data/VariableType;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 24
    const-string v0, "number"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lmiui/maml/data/VariableType;->NUM:Lmiui/maml/data/VariableType;

    .line 53
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v0, "string"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    sget-object v0, Lmiui/maml/data/VariableType;->STR:Lmiui/maml/data/VariableType;

    goto :goto_0

    .line 28
    :cond_1
    const-string v0, "object"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    sget-object v0, Lmiui/maml/data/VariableType;->OBJ:Lmiui/maml/data/VariableType;

    goto :goto_0

    .line 30
    :cond_2
    const-string v0, "number[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31
    sget-object v0, Lmiui/maml/data/VariableType;->NUM_ARR:Lmiui/maml/data/VariableType;

    goto :goto_0

    .line 32
    :cond_3
    const-string v0, "double[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33
    sget-object v0, Lmiui/maml/data/VariableType;->DOUBLE_ARR:Lmiui/maml/data/VariableType;

    goto :goto_0

    .line 34
    :cond_4
    const-string v0, "float[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 35
    sget-object v0, Lmiui/maml/data/VariableType;->FLOAT_ARR:Lmiui/maml/data/VariableType;

    goto :goto_0

    .line 36
    :cond_5
    const-string v0, "int[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 37
    sget-object v0, Lmiui/maml/data/VariableType;->INT_ARR:Lmiui/maml/data/VariableType;

    goto :goto_0

    .line 38
    :cond_6
    const-string v0, "short[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 39
    sget-object v0, Lmiui/maml/data/VariableType;->SHORT_ARR:Lmiui/maml/data/VariableType;

    goto :goto_0

    .line 40
    :cond_7
    const-string v0, "byte[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 41
    sget-object v0, Lmiui/maml/data/VariableType;->BYTE_ARR:Lmiui/maml/data/VariableType;

    goto :goto_0

    .line 42
    :cond_8
    const-string v0, "long[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 43
    sget-object v0, Lmiui/maml/data/VariableType;->LONG_ARR:Lmiui/maml/data/VariableType;

    goto :goto_0

    .line 44
    :cond_9
    const-string v0, "boolean[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 45
    sget-object v0, Lmiui/maml/data/VariableType;->BOOLEAN_ARR:Lmiui/maml/data/VariableType;

    goto :goto_0

    .line 46
    :cond_a
    const-string v0, "char[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 47
    sget-object v0, Lmiui/maml/data/VariableType;->CHAR_ARR:Lmiui/maml/data/VariableType;

    goto :goto_0

    .line 48
    :cond_b
    const-string v0, "string[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 49
    sget-object v0, Lmiui/maml/data/VariableType;->STR_ARR:Lmiui/maml/data/VariableType;

    goto/16 :goto_0

    .line 50
    :cond_c
    const-string v0, "object[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 51
    sget-object v0, Lmiui/maml/data/VariableType;->OBJ_ARR:Lmiui/maml/data/VariableType;

    goto/16 :goto_0

    .line 53
    :cond_d
    sget-object v0, Lmiui/maml/data/VariableType;->NUM:Lmiui/maml/data/VariableType;

    goto/16 :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/data/VariableType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lmiui/maml/data/VariableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/VariableType;

    return-object v0
.end method

.method public static values()[Lmiui/maml/data/VariableType;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lmiui/maml/data/VariableType;->$VALUES:[Lmiui/maml/data/VariableType;

    invoke-virtual {v0}, [Lmiui/maml/data/VariableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/data/VariableType;

    return-object v0
.end method


# virtual methods
.method public isArray()Z
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v0

    sget-object v1, Lmiui/maml/data/VariableType;->NUM_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v0

    sget-object v1, Lmiui/maml/data/VariableType;->OBJ_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumber()Z
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lmiui/maml/data/VariableType;->NUM:Lmiui/maml/data/VariableType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumberArray()Z
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v0

    sget-object v1, Lmiui/maml/data/VariableType;->NUM_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v0

    sget-object v1, Lmiui/maml/data/VariableType;->CHAR_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
