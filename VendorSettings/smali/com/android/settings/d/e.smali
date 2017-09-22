.class Lcom/android/settings/d/e;
.super Landroid/preference/SwitchPreference;
.source "DataUsageMeteredSettings.java"


# instance fields
.field final synthetic ahV:Lcom/android/settings/d/c;

.field private final hB:Landroid/net/NetworkTemplate;

.field private hP:Z


# direct methods
.method public constructor <init>(Lcom/android/settings/d/c;Landroid/content/Context;Landroid/net/NetworkTemplate;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 133
    iput-object p1, p0, Lcom/android/settings/d/e;->ahV:Lcom/android/settings/d/c;

    .line 134
    invoke-direct {p0, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 135
    iput-object p3, p0, Lcom/android/settings/d/e;->hB:Landroid/net/NetworkTemplate;

    .line 137
    invoke-virtual {p0, v6}, Lcom/android/settings/d/e;->setPersistent(Z)V

    .line 139
    iput-boolean v7, p0, Lcom/android/settings/d/e;->hP:Z

    .line 140
    invoke-static {p1}, Lcom/android/settings/d/c;->a(Lcom/android/settings/d/c;)Lcom/android/settings/d/f;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/settings/d/f;->c(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_1

    .line 142
    iget-wide v2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {p0, v7}, Lcom/android/settings/d/e;->setChecked(Z)V

    .line 144
    invoke-virtual {p0, v6}, Lcom/android/settings/d/e;->setEnabled(Z)V

    .line 151
    :goto_0
    iput-boolean v6, p0, Lcom/android/settings/d/e;->hP:Z

    .line 152
    return-void

    .line 146
    :cond_0
    iget-boolean v0, v0, Landroid/net/NetworkPolicy;->metered:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/d/e;->setChecked(Z)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/settings/d/e;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected notifyChanged()V
    .locals 3

    .prologue
    .line 156
    invoke-super {p0}, Landroid/preference/SwitchPreference;->notifyChanged()V

    .line 157
    iget-boolean v0, p0, Lcom/android/settings/d/e;->hP:Z

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/settings/d/e;->ahV:Lcom/android/settings/d/c;

    invoke-static {v0}, Lcom/android/settings/d/c;->a(Lcom/android/settings/d/c;)Lcom/android/settings/d/f;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/d/e;->hB:Landroid/net/NetworkTemplate;

    invoke-virtual {p0}, Lcom/android/settings/d/e;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/d/f;->a(Landroid/net/NetworkTemplate;Z)V

    .line 160
    :cond_0
    return-void
.end method
