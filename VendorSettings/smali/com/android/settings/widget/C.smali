.class abstract Lcom/android/vendorsettings/widget/C;
.super Ljava/lang/Object;
.source "SettingsAppWidgetProvider.java"


# instance fields
.field private azs:Z

.field private azt:Ljava/lang/Boolean;

.field private azu:Ljava/lang/Boolean;

.field private azv:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-boolean v0, p0, Lcom/android/vendorsettings/widget/C;->azs:Z

    .line 121
    iput-object v1, p0, Lcom/android/vendorsettings/widget/C;->azt:Ljava/lang/Boolean;

    .line 122
    iput-object v1, p0, Lcom/android/vendorsettings/widget/C;->azu:Ljava/lang/Boolean;

    .line 128
    iput-boolean v0, p0, Lcom/android/vendorsettings/widget/C;->azv:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/widget/w;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/vendorsettings/widget/C;-><init>()V

    return-void
.end method

.method private final B(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/C;->wL()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 249
    const v2, 0x7f0c07d0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 200
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/C;->wI()I

    move-result v0

    .line 201
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/C;->wJ()I

    move-result v1

    .line 202
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/C;->wK()I

    move-result v2

    .line 203
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/C;->getPosition()I

    move-result v3

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/widget/C;->getTriState(Landroid/content/Context;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 240
    :goto_0
    :pswitch_0
    return-void

    .line 206
    :pswitch_1
    const v4, 0x7f0c07d2

    invoke-direct {p0, p1, v4}, Lcom/android/vendorsettings/widget/C;->B(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 208
    invoke-virtual {p0, v5}, Lcom/android/vendorsettings/widget/C;->bu(Z)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 209
    # getter for: Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azh:[I
    invoke-static {}, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->access$400()[I

    move-result-object v0

    aget v0, v0, v3

    invoke-virtual {p2, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 213
    :pswitch_2
    const v4, 0x7f0c07d1

    invoke-direct {p0, p1, v4}, Lcom/android/vendorsettings/widget/C;->B(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 215
    invoke-virtual {p0, v6}, Lcom/android/vendorsettings/widget/C;->bu(Z)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 216
    invoke-static {}, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->wG()[I

    move-result-object v0

    aget v0, v0, v3

    invoke-virtual {p2, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 225
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/C;->isTurningOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 226
    const v4, 0x7f0c07d3

    invoke-direct {p0, p1, v4}, Lcom/android/vendorsettings/widget/C;->B(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 228
    invoke-virtual {p0, v6}, Lcom/android/vendorsettings/widget/C;->bu(Z)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 229
    # getter for: Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azi:[I
    invoke-static {}, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->access$600()[I

    move-result-object v0

    aget v0, v0, v3

    invoke-virtual {p2, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 232
    :cond_0
    const v4, 0x7f0c07d4

    invoke-direct {p0, p1, v4}, Lcom/android/vendorsettings/widget/C;->B(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 234
    invoke-virtual {p0, v5}, Lcom/android/vendorsettings/widget/C;->bu(Z)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 235
    # getter for: Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azh:[I
    invoke-static {}, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->access$400()[I

    move-result-object v0

    aget v0, v0, v3

    invoke-virtual {p2, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public abstract bu(Z)I
.end method

.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 2

    .prologue
    const/4 v0, 0x5

    .line 315
    iget-boolean v1, p0, Lcom/android/vendorsettings/widget/C;->azs:Z

    if-eqz v1, :cond_0

    .line 331
    :goto_0
    return v0

    .line 325
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/widget/C;->getActualState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 327
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 329
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isTurningOn()Z
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/vendorsettings/widget/C;->azu:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/widget/C;->azu:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method protected final setCurrentState(Landroid/content/Context;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 264
    iget-boolean v0, p0, Lcom/android/vendorsettings/widget/C;->azs:Z

    .line 265
    packed-switch p2, :pswitch_data_0

    .line 284
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/vendorsettings/widget/C;->azs:Z

    if-nez v0, :cond_1

    .line 285
    iget-boolean v0, p0, Lcom/android/vendorsettings/widget/C;->azv:Z

    if-eqz v0, :cond_1

    .line 286
    const-string v0, "SettingsAppWidgetProvider"

    const-string v1, "processing deferred state change"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/android/vendorsettings/widget/C;->azt:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/vendorsettings/widget/C;->azu:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/vendorsettings/widget/C;->azu:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/vendorsettings/widget/C;->azt:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    const-string v0, "SettingsAppWidgetProvider"

    const-string v1, "... but intended state matches, so no changes."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    :goto_1
    iput-boolean v2, p0, Lcom/android/vendorsettings/widget/C;->azv:Z

    .line 297
    :cond_1
    return-void

    .line 267
    :pswitch_0
    iput-boolean v2, p0, Lcom/android/vendorsettings/widget/C;->azs:Z

    .line 268
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/widget/C;->azt:Ljava/lang/Boolean;

    goto :goto_0

    .line 271
    :pswitch_1
    iput-boolean v2, p0, Lcom/android/vendorsettings/widget/C;->azs:Z

    .line 272
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/widget/C;->azt:Ljava/lang/Boolean;

    goto :goto_0

    .line 275
    :pswitch_2
    iput-boolean v3, p0, Lcom/android/vendorsettings/widget/C;->azs:Z

    .line 276
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/widget/C;->azt:Ljava/lang/Boolean;

    goto :goto_0

    .line 279
    :pswitch_3
    iput-boolean v3, p0, Lcom/android/vendorsettings/widget/C;->azs:Z

    .line 280
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/widget/C;->azt:Ljava/lang/Boolean;

    goto :goto_0

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/widget/C;->azu:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 291
    iput-boolean v3, p0, Lcom/android/vendorsettings/widget/C;->azs:Z

    .line 292
    iget-object v0, p0, Lcom/android/vendorsettings/widget/C;->azu:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/vendorsettings/widget/C;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final toggleState(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/widget/C;->getTriState(Landroid/content/Context;)I

    move-result v2

    .line 138
    packed-switch v2, :pswitch_data_0

    .line 151
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vendorsettings/widget/C;->azu:Ljava/lang/Boolean;

    .line 152
    iget-boolean v2, p0, Lcom/android/vendorsettings/widget/C;->azs:Z

    if-eqz v2, :cond_1

    .line 157
    iput-boolean v1, p0, Lcom/android/vendorsettings/widget/C;->azv:Z

    .line 162
    :goto_1
    return-void

    :pswitch_1
    move v0, v1

    .line 144
    goto :goto_0

    .line 146
    :pswitch_2
    iget-object v2, p0, Lcom/android/vendorsettings/widget/C;->azu:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 147
    iget-object v2, p0, Lcom/android/vendorsettings/widget/C;->azu:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 159
    :cond_1
    iput-boolean v1, p0, Lcom/android/vendorsettings/widget/C;->azs:Z

    .line 160
    invoke-virtual {p0, p1, v0}, Lcom/android/vendorsettings/widget/C;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public abstract wI()I
.end method

.method public abstract wJ()I
.end method

.method public abstract wK()I
.end method

.method public abstract wL()I
.end method
