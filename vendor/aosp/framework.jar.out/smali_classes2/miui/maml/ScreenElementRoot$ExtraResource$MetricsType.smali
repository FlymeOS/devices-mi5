.class final enum Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;
.super Ljava/lang/Enum;
.source "ScreenElementRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ScreenElementRoot$ExtraResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MetricsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

.field public static final enum DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

.field public static final enum SW:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

.field public static final enum SW_DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 823
    new-instance v0, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    const-string v1, "DEN"

    invoke-direct {v0, v1, v2}, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    .line 824
    new-instance v0, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    const-string v1, "SW"

    invoke-direct {v0, v1, v3}, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    .line 825
    new-instance v0, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    const-string v1, "SW_DEN"

    invoke-direct {v0, v1, v4}, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW_DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    .line 822
    const/4 v0, 0x3

    new-array v0, v0, [Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    sget-object v1, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW_DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    aput-object v1, v0, v4

    sput-object v0, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->$VALUES:[Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

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
    .line 822
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 822
    const-class v0, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    return-object v0
.end method

.method public static values()[Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;
    .locals 1

    .prologue
    .line 822
    sget-object v0, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->$VALUES:[Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-virtual {v0}, [Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    return-object v0
.end method
