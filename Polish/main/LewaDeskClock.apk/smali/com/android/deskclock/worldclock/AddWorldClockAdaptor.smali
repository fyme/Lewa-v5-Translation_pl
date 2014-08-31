.class public Lcom/android/deskclock/worldclock/AddWorldClockAdaptor;
.super Landroid/widget/ArrayAdapter;
.source "AddWorldClockAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/deskclock/worldclock/ClockCityInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/deskclock/worldclock/ClockCityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/deskclock/worldclock/ClockCityInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p3, "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/deskclock/worldclock/ClockCityInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 21
    iput p2, p0, Lcom/android/deskclock/worldclock/AddWorldClockAdaptor;->mTextViewResourceId:I

    .line 22
    iput-object p3, p0, Lcom/android/deskclock/worldclock/AddWorldClockAdaptor;->mItemsList:Ljava/util/List;

    .line 23
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/deskclock/worldclock/AddWorldClockAdaptor;->mInflater:Landroid/view/LayoutInflater;

    .line 25
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 29
    if-eqz p2, :cond_1

    move-object v4, p2

    .line 31
    .local v4, "view":Landroid/view/View;
    :goto_0
    if-ltz p1, :cond_0

    iget-object v5, p0, Lcom/android/deskclock/worldclock/AddWorldClockAdaptor;->mItemsList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt p1, v5, :cond_2

    .line 39
    :cond_0
    :goto_1
    return-object v4

    .line 29
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/android/deskclock/worldclock/AddWorldClockAdaptor;->mInflater:Landroid/view/LayoutInflater;

    iget v6, p0, Lcom/android/deskclock/worldclock/AddWorldClockAdaptor;->mTextViewResourceId:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 33
    .restart local v4    # "view":Landroid/view/View;
    :cond_2
    iget-object v5, p0, Lcom/android/deskclock/worldclock/AddWorldClockAdaptor;->mItemsList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/worldclock/ClockCityInfo;

    .line 34
    .local v1, "item":Lcom/android/deskclock/worldclock/ClockCityInfo;
    invoke-virtual {v1}, Lcom/android/deskclock/worldclock/ClockCityInfo;->getCityName()Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, "title":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Lcom/android/deskclock/worldclock/ClockCityInfo;->getTimeZone()Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "summary":Ljava/lang/CharSequence;
    const v5, 0x1020014

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 38
    .local v0, "firstTextView":Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
