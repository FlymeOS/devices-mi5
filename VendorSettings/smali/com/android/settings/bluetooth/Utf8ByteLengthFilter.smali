.class Lcom/android/vendorsettings/bluetooth/Utf8ByteLengthFilter;
.super Ljava/lang/Object;
.source "Utf8ByteLengthFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private final Sq:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/android/vendorsettings/bluetooth/Utf8ByteLengthFilter;->Sq:I

    .line 45
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 49
    const/4 v0, 0x0

    move v1, p2

    move v3, v0

    .line 51
    :goto_0
    if-ge v1, p3, :cond_2

    .line 52
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 53
    const/16 v2, 0x80

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    add-int v2, v3, v0

    .line 51
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v3, v2

    goto :goto_0

    .line 53
    :cond_0
    const/16 v2, 0x800

    if-ge v0, v2, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    goto :goto_1

    .line 55
    :cond_2
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v4

    .line 56
    const/4 v1, 0x0

    .line 58
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-ge v2, v4, :cond_6

    .line 59
    if-lt v2, p5, :cond_3

    if-lt v2, p6, :cond_d

    .line 60
    :cond_3
    invoke-interface {p4, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 61
    const/16 v5, 0x80

    if-ge v0, v5, :cond_4

    const/4 v0, 0x1

    :goto_3
    add-int/2addr v0, v1

    .line 58
    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_2

    .line 61
    :cond_4
    const/16 v5, 0x800

    if-ge v0, v5, :cond_5

    const/4 v0, 0x2

    goto :goto_3

    :cond_5
    const/4 v0, 0x3

    goto :goto_3

    .line 64
    :cond_6
    iget v0, p0, Lcom/android/vendorsettings/bluetooth/Utf8ByteLengthFilter;->Sq:I

    sub-int/2addr v0, v1

    .line 65
    if-gtz v0, :cond_7

    .line 66
    const-string v0, ""

    .line 81
    :goto_5
    return-object v0

    .line 67
    :cond_7
    if-lt v0, v3, :cond_8

    .line 68
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    move v1, p2

    move v2, v0

    .line 71
    :goto_6
    if-ge v1, p3, :cond_c

    .line 72
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 73
    const/16 v3, 0x80

    if-ge v0, v3, :cond_9

    const/4 v0, 0x1

    :goto_7
    sub-int/2addr v2, v0

    .line 74
    if-gez v2, :cond_b

    .line 75
    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_5

    .line 73
    :cond_9
    const/16 v3, 0x800

    if-ge v0, v3, :cond_a

    const/4 v0, 0x2

    goto :goto_7

    :cond_a
    const/4 v0, 0x3

    goto :goto_7

    .line 71
    :cond_b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 81
    :cond_c
    const/4 v0, 0x0

    goto :goto_5

    :cond_d
    move v0, v1

    goto :goto_4
.end method
