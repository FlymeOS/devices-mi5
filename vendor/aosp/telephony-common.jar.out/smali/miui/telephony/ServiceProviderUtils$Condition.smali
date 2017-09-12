.class abstract Lmiui/telephony/ServiceProviderUtils$Condition;
.super Ljava/lang/Object;
.source "ServiceProviderUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/ServiceProviderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Condition"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/telephony/ServiceProviderUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/telephony/ServiceProviderUtils$1;

    .prologue
    .line 205
    invoke-direct {p0}, Lmiui/telephony/ServiceProviderUtils$Condition;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(ILjava/lang/String;I)Z
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "numeric"    # I

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method
