.class final enum Lmiui/maml/data/WebServiceBinder$RequestMethod;
.super Ljava/lang/Enum;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/WebServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RequestMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/maml/data/WebServiceBinder$RequestMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/data/WebServiceBinder$RequestMethod;

.field public static final enum GET:Lmiui/maml/data/WebServiceBinder$RequestMethod;

.field public static final enum INVALID:Lmiui/maml/data/WebServiceBinder$RequestMethod;

.field public static final enum POST:Lmiui/maml/data/WebServiceBinder$RequestMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-instance v0, Lmiui/maml/data/WebServiceBinder$RequestMethod;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/WebServiceBinder$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/WebServiceBinder$RequestMethod;->INVALID:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    .line 95
    new-instance v0, Lmiui/maml/data/WebServiceBinder$RequestMethod;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/WebServiceBinder$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/WebServiceBinder$RequestMethod;->POST:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    .line 96
    new-instance v0, Lmiui/maml/data/WebServiceBinder$RequestMethod;

    const-string v1, "GET"

    invoke-direct {v0, v1, v4}, Lmiui/maml/data/WebServiceBinder$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/WebServiceBinder$RequestMethod;->GET:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    .line 93
    const/4 v0, 0x3

    new-array v0, v0, [Lmiui/maml/data/WebServiceBinder$RequestMethod;

    sget-object v1, Lmiui/maml/data/WebServiceBinder$RequestMethod;->INVALID:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/WebServiceBinder$RequestMethod;->POST:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/maml/data/WebServiceBinder$RequestMethod;->GET:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    aput-object v1, v0, v4

    sput-object v0, Lmiui/maml/data/WebServiceBinder$RequestMethod;->$VALUES:[Lmiui/maml/data/WebServiceBinder$RequestMethod;

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
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/data/WebServiceBinder$RequestMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 93
    const-class v0, Lmiui/maml/data/WebServiceBinder$RequestMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/WebServiceBinder$RequestMethod;

    return-object v0
.end method

.method public static values()[Lmiui/maml/data/WebServiceBinder$RequestMethod;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lmiui/maml/data/WebServiceBinder$RequestMethod;->$VALUES:[Lmiui/maml/data/WebServiceBinder$RequestMethod;

    invoke-virtual {v0}, [Lmiui/maml/data/WebServiceBinder$RequestMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/data/WebServiceBinder$RequestMethod;

    return-object v0
.end method
