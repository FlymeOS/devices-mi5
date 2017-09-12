.class final enum Lmiui/maml/data/WebServiceBinder$ResponseProtocol;
.super Ljava/lang/Enum;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/WebServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ResponseProtocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/maml/data/WebServiceBinder$ResponseProtocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

.field public static final enum BITMAP:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

.field public static final enum JSONarray:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

.field public static final enum JSONobj:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

.field public static final enum XML:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    new-instance v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    const-string v1, "XML"

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->XML:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    .line 101
    new-instance v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    const-string v1, "JSONobj"

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->JSONobj:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    .line 102
    new-instance v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    const-string v1, "JSONarray"

    invoke-direct {v0, v1, v4}, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->JSONarray:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    .line 103
    new-instance v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    const-string v1, "BITMAP"

    invoke-direct {v0, v1, v5}, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->BITMAP:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    .line 99
    const/4 v0, 0x4

    new-array v0, v0, [Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    sget-object v1, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->XML:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->JSONobj:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->JSONarray:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->BITMAP:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    aput-object v1, v0, v5

    sput-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->$VALUES:[Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

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
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/data/WebServiceBinder$ResponseProtocol;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 99
    const-class v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    return-object v0
.end method

.method public static values()[Lmiui/maml/data/WebServiceBinder$ResponseProtocol;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->$VALUES:[Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    invoke-virtual {v0}, [Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    return-object v0
.end method
