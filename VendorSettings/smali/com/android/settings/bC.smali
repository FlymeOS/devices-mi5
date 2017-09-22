.class Lcom/android/settings/bC;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ih:Lcom/android/settings/DataUsageSummary;

.field final synthetic ii:Landroid/telephony/SubscriptionInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;Landroid/telephony/SubscriptionInfo;)V
    .locals 0

    .prologue
    .line 1305
    iput-object p1, p0, Lcom/android/settings/bC;->ih:Lcom/android/settings/DataUsageSummary;

    iput-object p2, p0, Lcom/android/settings/bC;->ii:Landroid/telephony/SubscriptionInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/android/settings/bC;->ih:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->i(Lcom/android/settings/DataUsageSummary;)Landroid/telephony/SubscriptionManager;

    iget-object v0, p0, Lcom/android/settings/bC;->ii:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 1309
    iget-object v0, p0, Lcom/android/settings/bC;->ih:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/bC;->ii:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->a(Lcom/android/settings/DataUsageSummary;IZ)V

    .line 1310
    iget-object v0, p0, Lcom/android/settings/bC;->ih:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/bC;->ii:Landroid/telephony/SubscriptionInfo;

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->a(Lcom/android/settings/DataUsageSummary;Landroid/telephony/SubscriptionInfo;)V

    .line 1311
    iget-object v0, p0, Lcom/android/settings/bC;->ih:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->b(Lcom/android/settings/DataUsageSummary;)V

    .line 1312
    return-void
.end method
