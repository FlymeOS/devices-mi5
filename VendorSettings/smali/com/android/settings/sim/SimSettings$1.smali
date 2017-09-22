.class Lcom/android/vendorsettings/sim/SimSettings$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "SimSettings.java"


# instance fields
.field final synthetic apW:Lcom/android/vendorsettings/sim/SimSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/sim/SimSettings;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/vendorsettings/sim/SimSettings$1;->apW:Lcom/android/vendorsettings/sim/SimSettings;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimSettings$1;->apW:Lcom/android/vendorsettings/sim/SimSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/sim/SimSettings;->a(Lcom/android/vendorsettings/sim/SimSettings;)V

    .line 104
    return-void
.end method
