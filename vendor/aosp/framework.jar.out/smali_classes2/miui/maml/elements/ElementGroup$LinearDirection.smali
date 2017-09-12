.class final enum Lmiui/maml/elements/ElementGroup$LinearDirection;
.super Ljava/lang/Enum;
.source "ElementGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/ElementGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LinearDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/maml/elements/ElementGroup$LinearDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/elements/ElementGroup$LinearDirection;

.field public static final enum Horizontal:Lmiui/maml/elements/ElementGroup$LinearDirection;

.field public static final enum None:Lmiui/maml/elements/ElementGroup$LinearDirection;

.field public static final enum Vertical:Lmiui/maml/elements/ElementGroup$LinearDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lmiui/maml/elements/ElementGroup$LinearDirection;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lmiui/maml/elements/ElementGroup$LinearDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/ElementGroup$LinearDirection;->None:Lmiui/maml/elements/ElementGroup$LinearDirection;

    .line 36
    new-instance v0, Lmiui/maml/elements/ElementGroup$LinearDirection;

    const-string v1, "Horizontal"

    invoke-direct {v0, v1, v3}, Lmiui/maml/elements/ElementGroup$LinearDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/ElementGroup$LinearDirection;->Horizontal:Lmiui/maml/elements/ElementGroup$LinearDirection;

    .line 37
    new-instance v0, Lmiui/maml/elements/ElementGroup$LinearDirection;

    const-string v1, "Vertical"

    invoke-direct {v0, v1, v4}, Lmiui/maml/elements/ElementGroup$LinearDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/ElementGroup$LinearDirection;->Vertical:Lmiui/maml/elements/ElementGroup$LinearDirection;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lmiui/maml/elements/ElementGroup$LinearDirection;

    sget-object v1, Lmiui/maml/elements/ElementGroup$LinearDirection;->None:Lmiui/maml/elements/ElementGroup$LinearDirection;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/elements/ElementGroup$LinearDirection;->Horizontal:Lmiui/maml/elements/ElementGroup$LinearDirection;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/maml/elements/ElementGroup$LinearDirection;->Vertical:Lmiui/maml/elements/ElementGroup$LinearDirection;

    aput-object v1, v0, v4

    sput-object v0, Lmiui/maml/elements/ElementGroup$LinearDirection;->$VALUES:[Lmiui/maml/elements/ElementGroup$LinearDirection;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/elements/ElementGroup$LinearDirection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lmiui/maml/elements/ElementGroup$LinearDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ElementGroup$LinearDirection;

    return-object v0
.end method

.method public static values()[Lmiui/maml/elements/ElementGroup$LinearDirection;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lmiui/maml/elements/ElementGroup$LinearDirection;->$VALUES:[Lmiui/maml/elements/ElementGroup$LinearDirection;

    invoke-virtual {v0}, [Lmiui/maml/elements/ElementGroup$LinearDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/elements/ElementGroup$LinearDirection;

    return-object v0
.end method
