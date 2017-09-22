.class public Lcom/android/b/b/ai;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static aKk:Lcom/android/b/b/aj;


# direct methods
.method public static a(Lcom/android/b/b/aj;)V
    .locals 0

    .prologue
    .line 36
    sput-object p0, Lcom/android/b/b/ai;->aKk:Lcom/android/b/b/aj;

    .line 37
    return-void
.end method

.method public static eb(I)I
    .locals 1

    .prologue
    .line 15
    packed-switch p0, :pswitch_data_0

    .line 25
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 17
    :pswitch_0
    sget v0, Lcom/android/b/e;->aGM:I

    goto :goto_0

    .line 19
    :pswitch_1
    sget v0, Lcom/android/b/e;->aGQ:I

    goto :goto_0

    .line 21
    :pswitch_2
    sget v0, Lcom/android/b/e;->aGR:I

    goto :goto_0

    .line 23
    :pswitch_3
    sget v0, Lcom/android/b/e;->aGS:I

    goto :goto_0

    .line 15
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static f(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/b/b/ai;->aKk:Lcom/android/b/b/aj;

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/android/b/b/ai;->aKk:Lcom/android/b/b/aj;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/b/b/aj;->g(Landroid/content/Context;Ljava/lang/String;I)V

    .line 33
    :cond_0
    return-void
.end method
