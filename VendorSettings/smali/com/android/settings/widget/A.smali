.class Lcom/android/vendorsettings/widget/A;
.super Landroid/os/AsyncTask;
.source "SettingsAppWidgetProvider.java"


# instance fields
.field final synthetic azr:Lcom/android/vendorsettings/widget/z;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/widget/z;Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcom/android/vendorsettings/widget/A;->azr:Lcom/android/vendorsettings/widget/z;

    iput-object p2, p0, Lcom/android/vendorsettings/widget/A;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/vendorsettings/widget/A;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 555
    iget-object v0, p0, Lcom/android/vendorsettings/widget/A;->val$context:Landroid/content/Context;

    const-string v4, "user"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 557
    const-string v4, "no_share_location"

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/android/vendorsettings/widget/A;->val$resolver:Landroid/content/ContentResolver;

    const-string v4, "location_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 561
    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 575
    :goto_0
    iget-object v1, p0, Lcom/android/vendorsettings/widget/A;->val$resolver:Landroid/content/ContentResolver;

    const-string v4, "location_mode"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 576
    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 579
    :goto_1
    return-object v0

    .line 563
    :pswitch_0
    const/4 v0, 0x2

    .line 564
    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 567
    goto :goto_0

    :pswitch_2
    move v0, v2

    .line 570
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 572
    goto :goto_0

    .line 579
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/widget/A;->azr:Lcom/android/vendorsettings/widget/z;

    iget-object v1, p0, Lcom/android/vendorsettings/widget/A;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/widget/z;->getActualState(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v3, :cond_2

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    .line 561
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 552
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/widget/A;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 584
    iget-object v1, p0, Lcom/android/vendorsettings/widget/A;->azr:Lcom/android/vendorsettings/widget/z;

    iget-object v2, p0, Lcom/android/vendorsettings/widget/A;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/vendorsettings/widget/z;->setCurrentState(Landroid/content/Context;I)V

    .line 587
    iget-object v0, p0, Lcom/android/vendorsettings/widget/A;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->cq(Landroid/content/Context;)V

    .line 588
    return-void

    .line 584
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 552
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/widget/A;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
