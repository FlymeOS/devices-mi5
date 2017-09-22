.class Lcom/android/settings/users/AppRestrictionsFragment$AppLabelComparator;
.super Ljava/lang/Object;
.source "AppRestrictionsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic atp:Lcom/android/settings/users/AppRestrictionsFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppLabelComparator;->atp:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$1;)V
    .locals 0

    .prologue
    .line 754
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppLabelComparator;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;)I
    .locals 2

    .prologue
    .line 758
    iget-object v0, p1, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->atA:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 759
    iget-object v1, p2, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->atA:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 760
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 754
    check-cast p1, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    check-cast p2, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/users/AppRestrictionsFragment$AppLabelComparator;->a(Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;)I

    move-result v0

    return v0
.end method
