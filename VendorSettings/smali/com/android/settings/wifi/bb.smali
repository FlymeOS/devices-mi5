.class Lcom/android/vendorsettings/wifi/bb;
.super Ljava/lang/Object;
.source "WpsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

.field final synthetic aFa:Lcom/android/vendorsettings/wifi/WpsFragment$State;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/WpsFragment;Lcom/android/vendorsettings/wifi/WpsFragment$State;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/bb;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    iput-object p2, p0, Lcom/android/vendorsettings/wifi/bb;->aFa:Lcom/android/vendorsettings/wifi/WpsFragment$State;

    iput-object p3, p0, Lcom/android/vendorsettings/wifi/bb;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 246
    sget-object v0, Lcom/android/vendorsettings/wifi/bc;->aFb:[I

    iget-object v1, p0, Lcom/android/vendorsettings/wifi/bb;->aFa:Lcom/android/vendorsettings/wifi/WpsFragment$State;

    invoke-virtual {v1}, Lcom/android/vendorsettings/wifi/WpsFragment$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 248
    :pswitch_0
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/bb;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->f(Lcom/android/vendorsettings/wifi/WpsFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/bb;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->g(Lcom/android/vendorsettings/wifi/WpsFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/wifi/bb;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    const v2, 0x7f0c0304

    invoke-virtual {v1, v2}, Lcom/android/vendorsettings/wifi/WpsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/vendorsettings/wifi/bb;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v3}, Lcom/android/vendorsettings/wifi/WpsFragment;->f(Lcom/android/vendorsettings/wifi/WpsFragment;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/bb;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->h(Lcom/android/vendorsettings/wifi/WpsFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/bb;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->g(Lcom/android/vendorsettings/wifi/WpsFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c0303

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 254
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/bb;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->h(Lcom/android/vendorsettings/wifi/WpsFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 258
    :pswitch_1
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/bb;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->b(Lcom/android/vendorsettings/wifi/WpsFragment;)Lmiui/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/bb;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->h(Lcom/android/vendorsettings/wifi/WpsFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/bb;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->i(Lcom/android/vendorsettings/wifi/WpsFragment;)Lmiui/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/bb;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->g(Lcom/android/vendorsettings/wifi/WpsFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/wifi/bb;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 265
    :pswitch_2
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/bb;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->j(Lcom/android/vendorsettings/wifi/WpsFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/bb;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->b(Lcom/android/vendorsettings/wifi/WpsFragment;)Lmiui/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/bb;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->i(Lcom/android/vendorsettings/wifi/WpsFragment;)Lmiui/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/bb;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->h(Lcom/android/vendorsettings/wifi/WpsFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/bb;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->k(Lcom/android/vendorsettings/wifi/WpsFragment;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0c05b1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 270
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/bb;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->g(Lcom/android/vendorsettings/wifi/WpsFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/wifi/bb;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 274
    :pswitch_3
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/bb;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->j(Lcom/android/vendorsettings/wifi/WpsFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/bb;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->b(Lcom/android/vendorsettings/wifi/WpsFragment;)Lmiui/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/bb;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->i(Lcom/android/vendorsettings/wifi/WpsFragment;)Lmiui/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/bb;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->h(Lcom/android/vendorsettings/wifi/WpsFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/bb;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->k(Lcom/android/vendorsettings/wifi/WpsFragment;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0c01a6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 279
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/bb;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->g(Lcom/android/vendorsettings/wifi/WpsFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/wifi/bb;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/bb;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->l(Lcom/android/vendorsettings/wifi/WpsFragment;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/bb;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/wifi/bb;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v1}, Lcom/android/vendorsettings/wifi/WpsFragment;->l(Lcom/android/vendorsettings/wifi/WpsFragment;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 282
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/bb;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vendorsettings/wifi/WpsFragment;->a(Lcom/android/vendorsettings/wifi/WpsFragment;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    goto/16 :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
