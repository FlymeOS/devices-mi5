.class public final Lmiui/maml/data/WebServiceBinder$AuthToken;
.super Ljava/lang/Object;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/WebServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthToken"
.end annotation


# instance fields
.field public final authToken:Ljava/lang/String;

.field public final security:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "authToken"    # Ljava/lang/String;
    .param p2, "security"    # Ljava/lang/String;

    .prologue
    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    iput-object p1, p0, Lmiui/maml/data/WebServiceBinder$AuthToken;->authToken:Ljava/lang/String;

    .line 692
    iput-object p2, p0, Lmiui/maml/data/WebServiceBinder$AuthToken;->security:Ljava/lang/String;

    .line 693
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lmiui/maml/data/WebServiceBinder$AuthToken;
    .locals 4
    .param p0, "plain"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 696
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 703
    :cond_0
    :goto_0
    return-object v1

    .line 699
    :cond_1
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, "parts":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 703
    new-instance v1, Lmiui/maml/data/WebServiceBinder$AuthToken;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/WebServiceBinder$AuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
