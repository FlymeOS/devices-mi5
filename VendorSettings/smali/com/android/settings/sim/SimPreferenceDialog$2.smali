.class Lcom/android/vendorsettings/sim/SimPreferenceDialog$2;
.super Ljava/lang/Object;
.source "SimPreferenceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic apN:Landroid/widget/Spinner;

.field final synthetic apO:Lcom/android/vendorsettings/sim/SimPreferenceDialog;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/sim/SimPreferenceDialog;Landroid/widget/Spinner;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog$2;->apO:Lcom/android/vendorsettings/sim/SimPreferenceDialog;

    iput-object p2, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog$2;->apN:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog$2;->apO:Lcom/android/vendorsettings/sim/SimPreferenceDialog;

    iget-object v0, v0, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->apK:Landroid/view/View;

    const v1, 0x7f130150

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 160
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog$2;->apO:Lcom/android/vendorsettings/sim/SimPreferenceDialog;

    invoke-static {v1}, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->a(Lcom/android/vendorsettings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 162
    iget-object v2, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog$2;->apO:Lcom/android/vendorsettings/sim/SimPreferenceDialog;

    invoke-static {v2}, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->a(Lcom/android/vendorsettings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/SubscriptionInfo;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v2, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog$2;->apO:Lcom/android/vendorsettings/sim/SimPreferenceDialog;

    invoke-static {v2}, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->b(Lcom/android/vendorsettings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    const-wide/16 v4, 0x2

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    .line 166
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog$2;->apN:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 167
    iget-object v1, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog$2;->apO:Lcom/android/vendorsettings/sim/SimPreferenceDialog;

    invoke-static {v1}, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->a(Lcom/android/vendorsettings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 168
    iget-object v2, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog$2;->apO:Lcom/android/vendorsettings/sim/SimPreferenceDialog;

    invoke-static {v2}, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->c(Lcom/android/vendorsettings/sim/SimPreferenceDialog;)[I

    move-result-object v2

    aget v0, v2, v0

    .line 169
    iget-object v2, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog$2;->apO:Lcom/android/vendorsettings/sim/SimPreferenceDialog;

    invoke-static {v2}, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->a(Lcom/android/vendorsettings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/SubscriptionInfo;->setIconTint(I)V

    .line 170
    iget-object v2, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog$2;->apO:Lcom/android/vendorsettings/sim/SimPreferenceDialog;

    invoke-static {v2}, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->b(Lcom/android/vendorsettings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/telephony/SubscriptionManager;->setIconTint(II)I

    .line 171
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 172
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimPreferenceDialog$2;->apO:Lcom/android/vendorsettings/sim/SimPreferenceDialog;

    invoke-virtual {v0}, Lcom/android/vendorsettings/sim/SimPreferenceDialog;->finish()V

    .line 173
    return-void
.end method
