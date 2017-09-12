.class Lmiui/telephony/SubscriptionManagerEx$Holder;
.super Ljava/lang/Object;
.source "SubscriptionManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/SubscriptionManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# static fields
.field static final CONTEXT:Landroid/content/Context;

.field static final INSTANCE:Lmiui/telephony/SubscriptionManagerEx;

.field static final SUBSCRIPTION_MANAGER:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    .line 102
    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    sput-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->SUBSCRIPTION_MANAGER:Landroid/telephony/SubscriptionManager;

    .line 104
    new-instance v0, Lmiui/telephony/SubscriptionManagerEx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/telephony/SubscriptionManagerEx;-><init>(Lmiui/telephony/SubscriptionManagerEx$1;)V

    sput-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->INSTANCE:Lmiui/telephony/SubscriptionManagerEx;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
