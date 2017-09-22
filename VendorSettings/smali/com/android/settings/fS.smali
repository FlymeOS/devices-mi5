.class Lcom/android/vendorsettings/fS;
.super Ljava/lang/Object;
.source "NotificationAppListSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic vi:Lcom/android/vendorsettings/fR;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/fR;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/vendorsettings/fS;->vi:Lcom/android/vendorsettings/fR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 367
    const v0, 0x7f0c0094

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/fU;

    .line 368
    iget-object v1, p0, Lcom/android/vendorsettings/fS;->vi:Lcom/android/vendorsettings/fR;

    iget-object v1, v1, Lcom/android/vendorsettings/fR;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    invoke-static {v1, v0}, Lcom/android/vendorsettings/NotificationAppListSettings;->a(Lcom/android/vendorsettings/NotificationAppListSettings;Lcom/android/vendorsettings/fU;)Lcom/android/vendorsettings/fU;

    .line 369
    iget-object v1, p0, Lcom/android/vendorsettings/fS;->vi:Lcom/android/vendorsettings/fR;

    iget-object v1, v1, Lcom/android/vendorsettings/fR;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/NotificationAppListSettings;->i(Lcom/android/vendorsettings/NotificationAppListSettings;)Lcom/android/vendorsettings/fU;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/vendorsettings/fU;->a(Lcom/android/vendorsettings/fU;Z)Z

    .line 370
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 371
    const-string v2, "appName"

    invoke-static {v0}, Lcom/android/vendorsettings/fU;->b(Lcom/android/vendorsettings/fU;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v2, "packageName"

    invoke-virtual {v0}, Lcom/android/vendorsettings/fU;->Q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v2, p0, Lcom/android/vendorsettings/fS;->vi:Lcom/android/vendorsettings/fR;

    iget-object v2, v2, Lcom/android/vendorsettings/fR;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    invoke-virtual {v2}, Lcom/android/vendorsettings/NotificationAppListSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 375
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "startPreferencePanel"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/os/Bundle;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Ljava/lang/CharSequence;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-class v7, Landroid/app/Fragment;

    aput-object v7, v5, v6

    const/4 v6, 0x5

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 378
    if-eqz v3, :cond_0

    .line 379
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "com.android.settings.NotificationFilterSettings"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x3

    invoke-static {v0}, Lcom/android/vendorsettings/fU;->b(Lcom/android/vendorsettings/fU;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/vendorsettings/fS;->vi:Lcom/android/vendorsettings/fR;

    iget-object v1, v1, Lcom/android/vendorsettings/fR;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    aput-object v1, v4, v0

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v0

    .line 389
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
