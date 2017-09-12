.class Lmiui/telephony/SubscriptionManager$Holder;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/SubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lmiui/telephony/SubscriptionManagerEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lmiui/telephony/SubscriptionManagerEx;->getDefault()Lmiui/telephony/SubscriptionManagerEx;

    move-result-object v0

    sput-object v0, Lmiui/telephony/SubscriptionManager$Holder;->INSTANCE:Lmiui/telephony/SubscriptionManagerEx;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
