.class Lcom/android/settings/bB;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic ih:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1243
    iput-object p1, p0, Lcom/android/settings/bB;->ih:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1246
    iget-object v0, p0, Lcom/android/settings/bB;->ih:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->e(Lcom/android/settings/DataUsageSummary;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1267
    :goto_0
    return-void

    .line 1248
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bB;->ih:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->f(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 1249
    :goto_1
    iget-object v3, p0, Lcom/android/settings/bB;->ih:Lcom/android/settings/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->g(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v3

    .line 1250
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->y(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1251
    iget-object v4, p0, Lcom/android/settings/bB;->ih:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v4}, Lcom/android/settings/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0xb2

    invoke-static {v4, v5, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 1252
    if-eqz v0, :cond_4

    .line 1254
    iget-object v0, p0, Lcom/android/settings/bB;->ih:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/iC;->ag(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1255
    iget-object v0, p0, Lcom/android/settings/bB;->ih:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->h(Lcom/android/settings/DataUsageSummary;)V

    .line 1266
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/settings/bB;->ih:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0, v2}, Lcom/android/settings/DataUsageSummary;->a(Lcom/android/settings/DataUsageSummary;Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1248
    goto :goto_1

    .line 1257
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bB;->ih:Lcom/android/settings/DataUsageSummary;

    iget-object v4, p0, Lcom/android/settings/bB;->ih:Lcom/android/settings/DataUsageSummary;

    invoke-static {v4, v3}, Lcom/android/settings/DataUsageSummary;->a(Lcom/android/settings/DataUsageSummary;Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3, v1}, Lcom/android/settings/DataUsageSummary;->a(Lcom/android/settings/DataUsageSummary;IZ)V

    goto :goto_2

    .line 1262
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bB;->ih:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/bB;->ih:Lcom/android/settings/DataUsageSummary;

    iget-object v3, p0, Lcom/android/settings/bB;->ih:Lcom/android/settings/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->g(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/settings/DataUsageSummary;->a(Lcom/android/settings/DataUsageSummary;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;->a(Lcom/android/settings/DataUsageSummary;I)V

    goto :goto_2
.end method
